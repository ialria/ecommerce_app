import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:ecommerce_app/pages/menu_page.dart';
import 'package:ecommerce_app/providers/cart_provider.dart';
import 'package:ecommerce_app/utility/colors.dart';
import 'package:ecommerce_app/utility/data.dart';
import 'package:ecommerce_app/utility/dimensions.dart';
import 'package:ecommerce_app/utility/images.dart';
import 'package:ecommerce_app/utility/spacing.dart';
import 'package:ecommerce_app/widgets/brand_decoration.dart';
import 'package:ecommerce_app/widgets/brand_underline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<String> sliderImages = [
    Images.slider_1,
    Images.slider_2,
    Images.slider_3,
    Images.slider_4,
    Images.slider_5,
  ];

  // get data from categories table -order according to id
  final categoriesFuture=Supabase.instance.client.from('Categories').select().order("id",ascending: true).limit(5);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CarouselSlider(
            items: sliderImages.map((item) {
              return Image.asset(item, fit: BoxFit.cover);
            }).toList(),
            options: CarouselOptions(
              aspectRatio: 24 / 9,
              viewportFraction: 1.0,
              enableInfiniteScroll: true,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              // enlargeCenterPage: true,
              // enlargeFactor: 0.3,
              scrollDirection: Axis.horizontal,
            ),
          ),

          Padding(
            padding: EdgeInsets.all(Dimensions.paddingMedium),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Text(
                          "EXPLORE MENU",
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        BrandUnderline(),
                      ],
                    ),
                    Spacer(),
                    TextButton(onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => MenuPage(),));
                    }, child: Text("View All")),
                  ],
                ),
                Spacing.smallY,
                FutureBuilder(
                  future: categoriesFuture,
                  builder: (context, snapshot) {
                    if(snapshot.connectionState==ConnectionState.waiting){
                      return Center(child: CircularProgressIndicator(),);
                    }
                    else if(snapshot.hasError){
                      return Center(child: Text("Error! ${snapshot.error}"),);
                    }else if(snapshot.hasData && snapshot.data != null){
 final menuCategories=snapshot.data!;
                      return StaggeredGrid.count(
                        crossAxisCount: 3,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,

                        children: menuCategories.map((item) {
                          return StaggeredGridTile.count(
                            crossAxisCellCount: 1,
                            mainAxisCellCount: menuCategories.indexOf(item) == 0
                                ? 2
                                : 1,
                            child: DottedBorder(
                              options: RoundedRectDottedBorderOptions(
                                dashPattern: [8, 3],
                                padding: EdgeInsets.all(Dimensions.paddingSmall),
                                radius: Radius.circular(Dimensions.borderRadiusSmall),
                              ),
                              child: InkWell(
                                borderRadius:BorderRadius.circular(Dimensions.borderRadiusSmall) ,
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => MenuPage(selectedCategoryName: item['name']!,),));
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      item['name']!,
                                      style: Theme.of(context).textTheme.bodySmall,
                                    ),
                                    Expanded(
                                      child: Center(child: Image.network(item['image']?? "https://placehold.co/300x300.jpg" )),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      );
                    }else{
                      return Center(child: Text("No data available"),);
                    }

                  }
                ),
                Spacing.mediumY,
                Text(
                  "BEST SELLERS",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                BrandUnderline(),
                Spacing.smallY,
                SizedBox(
                  height: 330,
                  child: ListView.builder(
                    itemCount: bestSellersList.length,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        width: 220,
                        child: Card(
                          child: Column(
                            children: [
                              BrandDecoration(),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(
                                    Dimensions.paddingSmall,
                                  ),
                                  child: Column(
                                    children: [
                                      Spacing.smallY,
                                      Text(
                                        bestSellersList[index]["name"]!,
                                        style: Theme.of(
                                          context,
                                        ).textTheme.bodyMedium,
                                      ),
                                      Spacing.smallY,
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal:
                                                Dimensions.paddingMedium,
                                            vertical: Dimensions.paddingSmall,
                                          ),
                                          decoration: BoxDecoration(
                                            color: AppColors.brandColor,
                                            borderRadius: BorderRadius.circular(
                                              Dimensions.borderRadiusMedium,
                                            ),
                                          ),
                                          child: Text(
                                            "Rs. ${bestSellersList[index]["price"]}",
                                            style: TextStyle(
                                              color: AppColors.buttonColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                       Expanded(
                                          child: Image.asset(
                                            bestSellersList[index]["image"]!,
                                          ),
                                        ),

                                      FilledButton.icon(
                                        onPressed: () {
                                          Provider.of<CartProvider>(context,listen: false).addItem(bestSellersList[index]);
                                        },
                                        icon: Icon(Icons.add),
                                        label: Text(
                                          "ADD TO BUCKET",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                Spacing.mediumY,
                Text(
                  "TOP DEALS",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                BrandUnderline(),
                Spacing.smallY,
                SizedBox(
                  height: 390,
                  child: ListView.builder(
                    itemCount: topDealsList.length,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        width: 220,
                        child: Card(
                          child: Column(
                            children: [
                              BrandDecoration(),
                            Expanded(
                                  child: Image.asset(
                                    topDealsList[index]["image"]!,
                                  ),
                                ),

                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(
                                    Dimensions.paddingSmall,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      // Spacing.smallY,
                                      Text(
                                        topDealsList[index]["name"]!,
                                        style: Theme.of(
                                          context,
                                        ).textTheme.bodyMedium,
                                      ),
                                      Spacing.smallY,
                                      Text(
                                        topDealsList[index]["description"]!,
                                        style: Theme.of(
                                          context,
                                        ).textTheme.bodySmall,
                                      ),
                                      // Spacing.smallY,
                                      Text(
                                        "Rs. ${topDealsList[index]["price"]}",
                                      ),
                                      // Align(
                                      //   alignment: Alignment.centerRight,
                                      //   child: Container(
                                      //     padding: EdgeInsets.symmetric(
                                      //       horizontal:
                                      //       Dimensions.paddingMedium,
                                      //       vertical: Dimensions.paddingSmall,
                                      //     ),
                                      //     decoration: BoxDecoration(
                                      //       color: AppColors.brandColor,
                                      //       borderRadius: BorderRadius.circular(
                                      //         Dimensions.borderRadiusMedium,
                                      //       ),
                                      //     ),
                                      //     child:
                                      //   ),
                                      // ),


                                      FilledButton.icon(
                                        onPressed: () {
                                          Provider.of<CartProvider>(context,listen: false).addItem(topDealsList[index]);
                                        },
                                        icon: Icon(Icons.add),

                                        label: Text(
                                          "ADD TO BUCKET",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                Spacing.mediumY,
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                    Dimensions.borderRadiusSmall,
                  ),
                  child: Image.asset(Images.banner_1, fit: BoxFit.cover),
                ),
                Spacing.mediumY,
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                    Dimensions.borderRadiusSmall,
                  ),

                  child: Image.asset(Images.banner_2, fit: BoxFit.cover),
                ),
              ],
            ),
          ),
          // slider
          //   grid
          //   horizontal list
          //   images
        ],
      ),
    );
  }
}
