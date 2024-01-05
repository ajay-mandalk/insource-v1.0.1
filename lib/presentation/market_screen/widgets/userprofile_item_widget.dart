import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:insource/core/app_export.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outline1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
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
            theme.colorScheme.onPrimaryContainer.withOpacity(0.2),
            theme.colorScheme.onPrimaryContainer.withOpacity(0.2),
          ],
        ),
        corners: Corners(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.h),
          child: Row(
            children: [
              CustomImageView(
                imagePath: userprofileItemModelObj?.usdtImage,
                height: 32.adaptSize,
                width: 32.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 6.v),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.h,
                  top: 1.v,
                  bottom: 2.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        userprofileItemModelObj.usdtText!,
                        style: TextStyle(
                          color: theme.colorScheme.onPrimaryContainer
                              .withOpacity(1),
                          fontSize: 16.fSize,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 1.v),
                    Text(
                      userprofileItemModelObj.tetherText!,
                      style: TextStyle(
                        color: theme.colorScheme.onPrimaryContainer
                            .withOpacity(0.6),
                        fontSize: 12.fSize,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              CustomImageView(
                imagePath: userprofileItemModelObj?.usdt,
                height: 42.v,
                width: 100.h,
                margin: EdgeInsets.only(
                  left: 25.h,
                  top: 1.v,
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(
                  top: 1.v,
                  right: 10.h,
                ),
                child: Column(
                  children: [
                    Text(
                      userprofileItemModelObj.priceText!,
                      style: TextStyle(
                        color:
                            theme.colorScheme.onPrimaryContainer.withOpacity(1),
                        fontSize: 16.fSize,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      userprofileItemModelObj.percentageText!,
                      style: TextStyle(
                        color: appTheme.greenA70002,
                        fontSize: 14.fSize,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w600,
                      ),
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
