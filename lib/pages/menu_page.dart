import 'package:ecommerce_app/providers/cart_provider.dart';
import 'package:ecommerce_app/utility/colors.dart';
import 'package:ecommerce_app/utility/dimensions.dart';
import 'package:ecommerce_app/utility/spacing.dart';
import 'package:ecommerce_app/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class MenuPage extends StatefulWidget {
  final String selectedCategoryName;

  const MenuPage({super.key, this.selectedCategoryName = ""});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int selectedCategoryIndex = 0;
  final ItemScrollController categoryScrollController = ItemScrollController();
  final ItemScrollController productScrollController = ItemScrollController();
  final ItemPositionsListener productsPositionListener =
      ItemPositionsListener.create();

  // for every category fetch corresponding products too - done with joins normally in database
  final categoriesFuture = Supabase.instance.client
      .from("Categories")
      .select('*, Products(*)')
      .order('id', ascending: true);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      categoriesFuture.then((data) {
        // Future.delayed(Duration(milliseconds: 50), () {
        //
        // });

        if (widget.selectedCategoryName.isNotEmpty) {
          int index = data.lastIndexWhere(
            (element) => element['name'] == widget.selectedCategoryName,
          );
          if (index >= 0) {
            setState(() {
              selectedCategoryIndex = index;
              // categoryScrollController.jumpTo(
              //   index: selectedCategoryIndex == 0
              //       ? 0
              //       : selectedCategoryIndex - 1,
              // );
              // productScrollController.jumpTo(index: selectedCategoryIndex);
            });
          }
        }
        // resolve listener  for selecetdCategory index for mainPage (when a category is selected)
        productsPositionListener.itemPositions.addListener(() {
          int firstCategoryIndex =
              productsPositionListener.itemPositions.value.first.index;
          if (selectedCategoryIndex != firstCategoryIndex) {
            setState(() {
              selectedCategoryIndex = firstCategoryIndex;
            });
            categoryScrollController.scrollTo(
              index: selectedCategoryIndex,
              duration: Duration(milliseconds: 500),
            );
          }
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.paddingSmall),
        child: FutureBuilder(
          future: categoriesFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text("Error! ${snapshot.error}"));
            } else if (snapshot.hasData && snapshot.data != null) {
              final menuCategories = snapshot.data!;

              return Column(
                children: [
                  SizedBox(
                    height: 50,
                    child: ScrollablePositionedList.builder(
                      initialScrollIndex: selectedCategoryIndex,
                      itemScrollController: categoryScrollController,
                      scrollDirection: Axis.horizontal,
                      itemCount: menuCategories.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(Dimensions.marginSmall * 0.6),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedCategoryIndex = index;
                              });
                              productScrollController.jumpTo(
                                index: index,
                                // duration: Duration(milliseconds: 500),
                              );
                              // .jumpto - no duration instant jump to destination

                              // index==0 ? 0: index-1 to make the selected chip centered

                              categoryScrollController.scrollTo(
                                index: index == 0 ? 0 : index - 1,
                                duration: Duration(milliseconds: 300),
                              );
                            },
                            child: Chip(
                              backgroundColor: selectedCategoryIndex == index
                                  ? AppColors.brandColor
                                  : Colors.white,
                              label: Text(
                                menuCategories[index]['name']!,
                                style: TextStyle(
                                  color: selectedCategoryIndex == index
                                      ? AppColors.buttonColor
                                      : Colors.black,
                                ).copyWith(fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    child: ScrollablePositionedList.builder(
                      initialScrollIndex: selectedCategoryIndex,
                      itemScrollController: productScrollController,
                      itemPositionsListener: productsPositionListener,
                      itemCount: menuCategories.length,
                      itemBuilder: (context, index) {
                        String categoryName = menuCategories[index]['name']!;
                        // List<Map<String, dynamic>> categoryProducts = productsList
                        //     .where((element) => element['category'] == categoryName)
                        //     .toList();

                        final categoryProducts =
                            menuCategories[index]['Products'];

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Spacing.smallY,
                            Text(
                              categoryName,
                              style: Theme.of(context).textTheme.headlineLarge,
                            ),
                            Spacing.smallY,
                            GridView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: categoryProducts.length,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    childAspectRatio: 1 / 2,
                                  ),
                              itemBuilder: (context, index) {
                                return Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(
                                      Dimensions.paddingSmall,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Center(
                                            child: Image.network(
                                              categoryProducts[index]['image']!,
                                            ),
                                          ),
                                        ),
                                        Spacing.smallY,
                                        Text(
                                          categoryProducts[index]['name']!,
                                          style: Theme.of(
                                            context,
                                          ).textTheme.headlineMedium,
                                        ),
                                        Spacing.smallY,
                                        Text(
                                          categoryProducts[index]['description']!,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                fontWeight: FontWeight.w400,
                                              ),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Spacing.smallY,
                                        Text(
                                          "Rs. ${categoryProducts[index]['price'].toString()}",
                                          style: Theme.of(
                                            context,
                                          ).textTheme.bodyMedium,
                                        ),
                                        Spacing.smallY,
                                        Center(
                                          child: FilledButton.icon(
                                            onPressed: () {
                                              Provider.of<CartProvider>(
                                                context,
                                                listen: false,
                                              ).addItem(
                                                categoryProducts[index],
                                              );
                                              //  publisher- as it is  making change-should not listen to change
                                              //   subscriber is the listener
                                            },
                                            label: Text(
                                              "ADD TO BUCKET",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            icon: Icon(Icons.add),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              );
            } else {
              return Center(child: Text("No data Available"));
            }
          },
        ),
      ),
    );
  }
}
