import 'package:ecommerce_app/pages/main_page.dart';
import 'package:ecommerce_app/utility/colors.dart';
import 'package:ecommerce_app/utility/dimensions.dart';
import 'package:ecommerce_app/utility/spacing.dart';
import 'package:ecommerce_app/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              DrawerHeader(
                child: Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: Theme.of(context).textTheme.bodySmall!.color,
                      ),
                      Spacing.smallX,
                      Text(
                        "UserName",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Spacer(),
                      FilledButton(onPressed: () {}, child: Text("Logout",style: Theme.of(context).textTheme.bodyMedium,)),
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: Container(
                  padding: EdgeInsets.all(Dimensions.paddingSmall),

                  decoration: BoxDecoration(
                    color: AppColors.brandColor,
                    borderRadius: BorderRadius.circular(
                      Dimensions.borderRadiusSmall,
                    ),
                  ),
                  child: Icon(
                    Icons.location_pin,
                    size: 20,
                    color: AppColors.buttonColor,
                  ),
                ),
                title: Text(
                  "Store Locator",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              ListTile(
                leading: Container(
                  padding: EdgeInsets.all(Dimensions.paddingSmall),

                  decoration: BoxDecoration(
                    color: AppColors.brandColor,
                    borderRadius: BorderRadius.circular(
                      Dimensions.borderRadiusSmall,
                    ),
                  ),
                  child: Icon(
                    Icons.search,
                    size: 20,
                    color: AppColors.buttonColor,
                  ),
                ),
                title: Text(
                  "Track Order",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              ListTile(
                leading: Container(
                  padding: EdgeInsets.all(Dimensions.paddingSmall),

                  decoration: BoxDecoration(
                    color: AppColors.brandColor,
                    borderRadius: BorderRadius.circular(
                      Dimensions.borderRadiusSmall,
                    ),
                  ),
                  child: Icon(
                    Icons.list,
                    size: 20,
                    color: AppColors.buttonColor,
                  ),
                ),
                title: Text(
                  "Explore Menu",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              Divider(color: Theme.of(context).textTheme.bodySmall!.color),
              ListTile(
                title: Text(
                  "About Us",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                onTap: () {},
              ),
              ListTile(
                title: Text(
                  "Terms and conditions",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                onTap: () {},
              ),
              ListTile(
                title: Text(
                  "Contact Us",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                onTap: () {},
              ),
              ListTile(
                title: Text(
                  "Privacy Policy",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                onTap: () {},
              ),
              ListTile(
                title: Text(
                  "Mitao Bhook",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                onTap: () {},
              ),
              ListTile(
                title: Text(
                  "Scholarships",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                onTap: () {},
              ),
              ListTile(
                title: Text(
                  "Career Options",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      body: MainPage(),
    );
  }
}
