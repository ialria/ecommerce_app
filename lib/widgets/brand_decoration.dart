import 'package:ecommerce_app/utility/colors.dart';
import 'package:flutter/material.dart';

class BrandDecoration extends StatelessWidget {
  const BrandDecoration({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: AppColors.brandColor,
          width: 14,
          height:24,
        ),
        Container(
          color: AppColors.brandColor,
          width: 14,
          height:24,
          margin: EdgeInsets.symmetric(horizontal: 6),
        ),
        Container(
          color: AppColors.brandColor,
          width: 14,
          height:24,
        )
      ],);
  }
}
