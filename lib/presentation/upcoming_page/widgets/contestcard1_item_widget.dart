import '../models/contestcard1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:insource/core/app_export.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore: must_be_immutable
class Contestcard1ItemWidget extends StatelessWidget {
  Contestcard1ItemWidget(
    this.contestcard1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Contestcard1ItemModel contestcard1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 5.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgContestCardGreenA400111x342,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          Container(
            margin: EdgeInsets.only(right: 1.h),
            decoration: AppDecoration.outlineBlackF,
            child: Column(
              children: [
                SizedBox(
                  height: 50.v,
                  width: 317.h,
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgPngtreeGoldTr,
                        height: 50.v,
                        width: 52.h,
                        alignment: Alignment.centerLeft,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 44.h,
                            top: 6.v,
                            bottom: 6.v,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    contestcard1ItemModelObj.contestTitle!,
                                    style: TextStyle(
                                      color: theme.colorScheme.primary,
                                      fontSize: 12.fSize,
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    contestcard1ItemModelObj.contestPrize!,
                                    style: TextStyle(
                                      color: theme
                                          .colorScheme.onPrimaryContainer
                                          .withOpacity(1),
                                      fontSize: 16.fSize,
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 55.h,
                                margin: EdgeInsets.only(
                                  top: 5.v,
                                  bottom: 12.v,
                                ),
                                decoration: AppDecoration.gradientRedAToPrimary
                                    .copyWith(
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
                                      theme.colorScheme.onPrimaryContainer
                                          .withOpacity(0.2),
                                      theme.colorScheme.onPrimaryContainer
                                          .withOpacity(0),
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
                                      horizontal: 3.h,
                                      vertical: 1.v,
                                    ),
                                    child: Text(
                                      contestcard1ItemModelObj.contestTime!,
                                      style: TextStyle(
                                        color: theme
                                            .colorScheme.onPrimaryContainer
                                            .withOpacity(1),
                                        fontSize: 12.fSize,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    contestcard1ItemModelObj.entryFee!,
                    style: TextStyle(
                      color:
                          theme.colorScheme.onPrimaryContainer.withOpacity(1),
                      fontSize: 6.5014519691467285.fSize,
                      fontFamily: 'Nunito Sans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 1.v),
                Container(
                  height: 5.v,
                  width: 317.h,
                  decoration: BoxDecoration(
                    color: appTheme.blueGray10001,
                    borderRadius: BorderRadius.circular(
                      2.h,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      2.h,
                    ),
                    child: LinearProgressIndicator(
                      value: 0.8,
                      backgroundColor: appTheme.blueGray10001,
                    ),
                  ),
                ),
                SizedBox(height: 1.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      contestcard1ItemModelObj.spotsAvailable!,
                      style: TextStyle(
                        color:
                            theme.colorScheme.onPrimaryContainer.withOpacity(1),
                        fontSize: 6.5014519691467285.fSize,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      contestcard1ItemModelObj.spotsLeft!,
                      style: TextStyle(
                        color:
                            theme.colorScheme.onPrimaryContainer.withOpacity(1),
                        fontSize: 6.5014519691467285.fSize,
                        fontFamily: 'Nunito Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 5.h,
                    right: 4.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgIcon,
                            height: 16.v,
                            width: 14.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 3.h,
                              top: 2.v,
                              bottom: 2.v,
                            ),
                            child: Text(
                              contestcard1ItemModelObj.winnerText!,
                              style: TextStyle(
                                color: theme.colorScheme.primary,
                                fontSize: 7.871285915374756.fSize,
                                fontFamily: 'Nunito Sans',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSend,
                        height: 12.adaptSize,
                        width: 12.adaptSize,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
