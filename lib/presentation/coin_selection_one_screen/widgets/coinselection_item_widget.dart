import '../models/coinselection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:insource/core/app_export.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore: must_be_immutable
class CoinselectionItemWidget extends StatelessWidget {
  CoinselectionItemWidget(
    this.coinselectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CoinselectionItemModel coinselectionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: coinselectionItemModelObj?.image,
            height: 32.adaptSize,
            width: 32.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 6.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              top: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  coinselectionItemModelObj.btcText!,
                  style: TextStyle(
                    color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                    fontSize: 16.fSize,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 1.v),
                Text(
                  coinselectionItemModelObj.bitcoinText!,
                  style: TextStyle(
                    color:
                        theme.colorScheme.onPrimaryContainer.withOpacity(0.6),
                    fontSize: 12.fSize,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 26.h,
              top: 2.v,
            ),
            child: Column(
              children: [
                Text(
                  coinselectionItemModelObj.priceText!,
                  style: TextStyle(
                    color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                    fontSize: 16.fSize,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    coinselectionItemModelObj.percentageText!,
                    style: TextStyle(
                      color: appTheme.greenA70002,
                      fontSize: 14.fSize,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 49.h,
            margin: EdgeInsets.only(
              left: 15.h,
              top: 11.v,
              bottom: 11.v,
            ),
            decoration: AppDecoration.gradientGreenAToGreenA.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder6,
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
                begin: Alignment(-0.01, 0),
                end: Alignment(1.01, 1),
                colors: [
                  theme.colorScheme.onPrimaryContainer.withOpacity(0.15),
                  theme.colorScheme.onPrimaryContainer.withOpacity(0.02),
                ],
              ),
              corners: Corners(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 7.h),
                child: Text(
                  coinselectionItemModelObj.longText!,
                  style: TextStyle(
                    color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                    fontSize: 14.fSize,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: 49.h,
            margin: EdgeInsets.only(
              left: 15.h,
              top: 11.v,
              bottom: 11.v,
            ),
            decoration: AppDecoration.gradientRedAToRedA.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder6,
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
                begin: Alignment(-0.01, 0),
                end: Alignment(1.01, 1),
                colors: [
                  theme.colorScheme.onPrimaryContainer.withOpacity(0.15),
                  theme.colorScheme.onPrimaryContainer.withOpacity(0.02),
                ],
              ),
              corners: Corners(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 5.h,
                  vertical: 1.v,
                ),
                child: Text(
                  coinselectionItemModelObj.shortText!,
                  style: TextStyle(
                    color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                    fontSize: 14.fSize,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
