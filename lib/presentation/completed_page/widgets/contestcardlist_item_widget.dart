import '../models/contestcardlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:insource/core/app_export.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore: must_be_immutable
class ContestcardlistItemWidget extends StatelessWidget {
  ContestcardlistItemWidget(
    this.contestcardlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ContestcardlistItemModel contestcardlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 111.v,
      width: 342.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(
                left: 12.h,
                top: 1.v,
                right: 12.h,
              ),
              decoration: AppDecoration.outlineBlackF,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 1.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: 50.v,
                          width: 135.h,
                          margin: EdgeInsets.only(top: 8.v),
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    right: 9.h,
                                    bottom: 5.v,
                                  ),
                                  child: Text(
                                    contestcardlistItemModelObj.cRORECounter!,
                                    style: TextStyle(
                                      color: theme
                                          .colorScheme.onPrimaryContainer
                                          .withOpacity(1),
                                      fontSize: 16.fSize,
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 7.v),
                                  child: Text(
                                    contestcardlistItemModelObj.megacontest!,
                                    style: TextStyle(
                                      color: theme.colorScheme.primary,
                                      fontSize: 12.fSize,
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgPngtreeGoldTr,
                                height: 50.v,
                                width: 52.h,
                                alignment: Alignment.centerLeft,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 46.h,
                          margin: EdgeInsets.only(
                            left: 1.h,
                            bottom: 46.v,
                          ),
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
                                theme.colorScheme.onPrimaryContainer
                                    .withOpacity(0.2),
                                theme.colorScheme.onPrimaryContainer
                                    .withOpacity(0.2),
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
                                contestcardlistItemModelObj.timer!,
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
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 19.v,
                            bottom: 16.v,
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
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 13.h),
                              decoration:
                                  AppDecoration.gradientRedAToPrimary.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder6,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 3.v),
                                  Text(
                                    contestcardlistItemModelObj.joinText!,
                                    style: TextStyle(
                                      color: theme
                                          .colorScheme.onPrimaryContainer
                                          .withOpacity(1),
                                      fontSize: 14.fSize,
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 1.h),
                      child: Text(
                        contestcardlistItemModelObj.entryFeeFree!,
                        style: TextStyle(
                          color: theme.colorScheme.onPrimaryContainer
                              .withOpacity(1),
                          fontSize: 6.5014519691467285.fSize,
                          fontFamily: 'Nunito Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 1.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup427318361,
                    height: 5.v,
                    width: 317.h,
                  ),
                  SizedBox(height: 1.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        contestcardlistItemModelObj.spots!,
                        style: TextStyle(
                          color: theme.colorScheme.onPrimaryContainer
                              .withOpacity(1),
                          fontSize: 6.5014519691467285.fSize,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        contestcardlistItemModelObj.spotsLeft!,
                        style: TextStyle(
                          color: theme.colorScheme.onPrimaryContainer
                              .withOpacity(1),
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
                            contestcardlistItemModelObj.winnersText!,
                            style: TextStyle(
                              color: theme.colorScheme.primary,
                              fontSize: 7.871285915374756.fSize,
                              fontFamily: 'Nunito Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Spacer(),
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
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 111.v,
              width: 342.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGraphGreenA40085x309,
                    height: 85.v,
                    width: 309.h,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1.h,
                        ),
                        borderRadius: BorderRadiusStyle.roundedBorder16,
                      ),
                      child: Container(
                        height: 111.v,
                        width: 342.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 130.h,
                          vertical: 12.v,
                        ),
                        decoration: AppDecoration
                            .gradientOnPrimaryContainerToOnPrimaryContainer6
                            .copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder16,
                        ),
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: SizedBox(
                                height: 65.v,
                                width: 80.h,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgPngtreeGoldTr,
                                      height: 65.v,
                                      width: 80.h,
                                      alignment: Alignment.center,
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgPngtreeGoldTr,
                                      height: 65.v,
                                      width: 80.h,
                                      alignment: Alignment.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 5.v),
                                child: Text(
                                  contestcardlistItemModelObj.youWonText!,
                                  style: TextStyle(
                                    color: theme.colorScheme.primary,
                                    fontSize: 16.fSize,
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ],
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
    );
  }
}
