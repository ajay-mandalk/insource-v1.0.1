import '../models/contestcard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:insource/core/app_export.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore: must_be_immutable
class ContestcardItemWidget extends StatelessWidget {
  ContestcardItemWidget(
    this.contestcardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ContestcardItemModel contestcardItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 1.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgContestCard,
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
                Container(
                  width: 46.h,
                  decoration: AppDecoration.outline.copyWith(
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
                      begin: Alignment(0.5, 0),
                      end: Alignment(0.5, 1),
                      colors: [
                        theme.colorScheme.onPrimaryContainer.withOpacity(0.2),
                        theme.colorScheme.onPrimaryContainer.withOpacity(0.2),
                      ],
                    ),
                    corners: Corners(
                      topLeft: Radius.circular(6),
                      topRight: Radius.circular(6),
                      bottomLeft: Radius.circular(6),
                      bottomRight: Radius.circular(6),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 11.h,
                        vertical: 1.v,
                      ),
                      child: Text(
                        contestcardItemModelObj.timer!,
                        style: TextStyle(
                          color: theme.colorScheme.onPrimaryContainer
                              .withOpacity(1),
                          fontSize: 5.565882205963135.fSize,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 97.v,
                  width: 317.h,
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                          height: 50.v,
                          width: 135.h,
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
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      contestcardItemModelObj.title!,
                                      style: TextStyle(
                                        color: theme.colorScheme.primary,
                                        fontSize: 12.fSize,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      contestcardItemModelObj.prize!,
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
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 18.v),
                          child: Text(
                            contestcardItemModelObj.spots!,
                            style: TextStyle(
                              color: theme.colorScheme.onPrimaryContainer
                                  .withOpacity(1),
                              fontSize: 10.fSize,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          height: 86.v,
                          width: 317.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgGroup427318361,
                                height: 5.v,
                                width: 317.h,
                                alignment: Alignment.bottomCenter,
                                margin: EdgeInsets.only(bottom: 35.v),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 5.h,
                                    right: 1.h,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 70.v),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
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
                                                contestcardItemModelObj
                                                    .winnerText!,
                                                style: TextStyle(
                                                  color:
                                                      theme.colorScheme.primary,
                                                  fontSize:
                                                      7.871285915374756.fSize,
                                                  fontFamily: 'Nunito Sans',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            width: 64.h,
                                            decoration: AppDecoration
                                                .gradientRedAToPrimary
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder6,
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
                                                  theme.colorScheme
                                                      .onPrimaryContainer
                                                      .withOpacity(0.2),
                                                  theme.colorScheme
                                                      .onPrimaryContainer
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
                                                    horizontal: 14.h),
                                                child: Text(
                                                  contestcardItemModelObj
                                                      .joinButton!,
                                                  style: TextStyle(
                                                    color: theme.colorScheme
                                                        .onPrimaryContainer
                                                        .withOpacity(1),
                                                    fontSize: 14.fSize,
                                                    fontFamily: 'Open Sans',
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 5.v),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              contestcardItemModelObj.entryFee!,
                                              style: TextStyle(
                                                color: theme.colorScheme
                                                    .onPrimaryContainer
                                                    .withOpacity(1),
                                                fontSize: 12.fSize,
                                                fontFamily: 'Nunito Sans',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 7.v),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 3.h),
                                            child: Text(
                                              contestcardItemModelObj
                                                  .spotsLeft!,
                                              style: TextStyle(
                                                color: theme.colorScheme
                                                    .onPrimaryContainer
                                                    .withOpacity(1),
                                                fontSize: 10.fSize,
                                                fontFamily: 'Nunito Sans',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 5.v),
                                          CustomImageView(
                                            imagePath: ImageConstant.imgSend,
                                            height: 12.adaptSize,
                                            width: 12.adaptSize,
                                            margin: EdgeInsets.only(right: 3.h),
                                          ),
                                        ],
                                      ),
                                    ],
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
