import '../models/carosol_item_model.dart';
import 'package:flutter/material.dart';
import 'package:insource/core/app_export.dart';

// ignore: must_be_immutable
class CarosolItemWidget extends StatelessWidget {
  CarosolItemWidget(
    this.carosolItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CarosolItemModel carosolItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgCarosol,
      height: 121.v,
      width: 331.h,
      radius: BorderRadius.circular(
        10.h,
      ),
    );
  }
}
