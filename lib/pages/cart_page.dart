import 'package:ecommerce_app/pages/checkout_page.dart';
import 'package:ecommerce_app/providers/cart_provider.dart';
import 'package:ecommerce_app/utility/colors.dart';
import 'package:ecommerce_app/utility/dimensions.dart';
import 'package:ecommerce_app/utility/spacing.dart';
import 'package:ecommerce_app/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    var cartList = Provider.of<CartProvider>(context).getCartList();
    return Scaffold(
      appBar: MyAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(Dimensions.paddingSmall),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: cartList.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Padding(
                      padding: EdgeInsets.all(Dimensions.paddingMedium),
                      child: Row(
                        children: [
                          Image.network(cartList[index]['image'], width: 100),
                          Spacing.mediumX,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FittedBox(
                                child: Text(
                                  cartList[index]['name'],
                                  style: Theme.of(
                                    context,
                                  ).textTheme.headlineSmall,
                                ),
                              ),
                              Spacing.smallY,
                              Row(
                                children: [
                                  SizedBox(
                                    width: 30,
                                    height: 30,
                                    child: IconButton(
                                      onPressed: () {
                                        Provider.of<CartProvider>(
                                          context,
                                          listen: false,
                                        ).decrementQuantity(index);
                                      },
                                      icon: Icon(
                                        cartList[index]['quantity'] == 1
                                            ? Icons.delete
                                            : Icons.remove,
                                      ),
                                      iconSize: 15,
                                      style: IconButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            Dimensions.borderRadiusSmall,
                                          ),
                                          side: BorderSide(
                                            color: AppColors.brandColor,
                                            width: 1,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Spacing.mediumX,
                                  FittedBox(
                                    child: Text(
                                      cartList[index]['quantity'].toString(),
                                    ),
                                  ),
                                  Spacing.mediumX,
                                  SizedBox(
                                    width: 30,
                                    height: 30,
                                    child: IconButton(
                                      onPressed: () {
                                        Provider.of<CartProvider>(
                                          context,
                                          listen: false,
                                        ).incrementQuantity(index);
                                      },
                                      icon: Icon(Icons.add),
                                      iconSize: 15,
                                      style: IconButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            Dimensions.borderRadiusSmall,
                                          ),
                                        ),
                                        side: BorderSide(
                                          color: AppColors.brandColor,
                                          width: 1,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                          Text(
                            "Rs. ${cartList[index]['price']}",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: Dimensions.paddingSmall * 0.25,
                horizontal: Dimensions.paddingMedium,
              ),
              decoration: BoxDecoration(
                color: AppColors.brandColor,
                borderRadius: BorderRadius.circular(
                  Dimensions.borderRadiusMedium,
                ),
              ),
              child: Row(
                children: [
                  Text(
                    "Total | ",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppColors.buttonColor,
                    ),
                  ),
                  Text(
                    "Rs. ${Provider.of<CartProvider>(context).getCartTotalAmount().toString()}",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppColors.buttonColor,
                    ),
                  ),
                  Spacer(),
                  TextButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => CheckoutPage()),
                      );
                    },
                    iconAlignment: IconAlignment.end,
                    icon: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.chevron_right_outlined,
                        color: Colors.black,
                      ),
                    ),
                    label: Text(
                      "Checkout",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppColors.buttonColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
