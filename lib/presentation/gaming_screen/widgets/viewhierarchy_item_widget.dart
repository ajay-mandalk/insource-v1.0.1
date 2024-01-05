import '../models/viewhierarchy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:insource/core/app_export.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore: must_be_immutable
class ViewhierarchyItemWidget extends StatelessWidget {
  ViewhierarchyItemWidget(
    this.viewhierarchyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewhierarchyItemModel viewhierarchyItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.gradientOnPrimaryContainerToOnPrimaryContainer4
          .copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: OutlineGradientButton(
        padding: EdgeInsets.only(
          left: 1.h,
          top: 1.v,
          right: 1.h,
          bottom: 1.v,
        ),
        strokeWidth: 1.h,
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            theme.colorScheme.onPrimaryContainer.withOpacity(0.15),
            theme.colorScheme.onPrimaryContainer.withOpacity(0.03),
          ],
        ),
        corners: Corners(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 18.h,
            vertical: 5.v,
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 3.v),
                child: Text(
                  viewhierarchyItemModelObj.one!,
                  style: TextStyle(
                    color: theme.colorScheme.primary,
                    fontSize: 12.fSize,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgProfile18x18,
                height: 18.adaptSize,
                width: 18.adaptSize,
                margin: EdgeInsets.only(
                  left: 10.h,
                  top: 1.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  top: 4.v,
                ),
                child: Text(
                  viewhierarchyItemModelObj.textOne!,
                  style: TextStyle(
                    color: theme.colorScheme.primary,
                    fontSize: 12.fSize,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(top: 3.v),
                child: Text(
                  viewhierarchyItemModelObj.textTwo!,
                  style: TextStyle(
                    color: appTheme.greenA70001,
                    fontSize: 12.064865112304688.fSize,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                height: 20.adaptSize,
                width: 20.adaptSize,
                margin: EdgeInsets.only(
                  left: 10.h,
                  top: 1.v,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup427318398,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      alignment: Alignment.center,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgComponent1,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              Container(
                height: 20.adaptSize,
                width: 20.adaptSize,
                margin: EdgeInsets.only(
                  left: 1.h,
                  top: 1.v,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup427318398GreenA70001,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      alignment: Alignment.center,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgComponent1Primarycontainer,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              Container(
                height: 20.adaptSize,
                width: 20.adaptSize,
                margin: EdgeInsets.only(
                  left: 1.h,
                  top: 1.v,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup427318398,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      alignment: Alignment.center,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgComponent1,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              Container(
                height: 20.adaptSize,
                width: 20.adaptSize,
                margin: EdgeInsets.only(
                  left: 1.h,
                  top: 1.v,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup427318398GreenA70001,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      alignment: Alignment.center,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgComponent1Teal400,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              Container(
                height: 20.adaptSize,
                width: 20.adaptSize,
                margin: EdgeInsets.only(
                  left: 1.h,
                  top: 1.v,
                  right: 6.h,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup427318398GreenA70001,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      alignment: Alignment.center,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgComponent1Lime700,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
