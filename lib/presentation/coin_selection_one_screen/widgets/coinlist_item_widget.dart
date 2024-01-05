import '../models/coinlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:insource/core/app_export.dart';
import 'package:insource/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class CoinlistItemWidget extends StatelessWidget {
  CoinlistItemWidget(
    this.coinlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CoinlistItemModel coinlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 57.h,
      child: CustomIconButton(
        height: 57.adaptSize,
        width: 57.adaptSize,
        padding: EdgeInsets.all(7.h),
        decoration: IconButtonStyleHelper.outlineRedA,
        child: CustomImageView(
          imagePath: coinlistItemModelObj?.component,
        ),
      ),
    );
  }
}
