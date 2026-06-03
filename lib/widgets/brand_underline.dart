import 'package:ecommerce_app/utility/colors.dart';
import 'package:ecommerce_app/utility/dimensions.dart';
import 'package:flutter/material.dart';

class BrandUnderline extends StatelessWidget {
  const BrandUnderline({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: Divider(
        color: AppColors.brandColor,
        thickness: 3,
        radius: BorderRadius.circular(Dimensions.borderRadiusSmall),
      ),
    );
  }
}