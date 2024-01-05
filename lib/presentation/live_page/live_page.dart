import 'notifier/live_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:insource/core/app_export.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore_for_file: must_be_immutable
class LivePage extends ConsumerStatefulWidget {
  const LivePage({Key? key})
      : super(
          key: key,
        );

  @override
  LivePageState createState() => LivePageState();
}

class LivePageState extends ConsumerState<LivePage>
    with AutomaticKeepAliveClientMixin<LivePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 20.v),
              _buildContestCard(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildContestCard(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        children: [
          Container(
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
                              "lbl_27m_54s".tr,
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
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 3.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 50.v,
                                  width: 135.h,
                                  margin: EdgeInsets.only(bottom: 6.v),
                                  child: Stack(
                                    alignment: Alignment.centerRight,
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgPngtreeGoldTr,
                                        height: 50.v,
                                        width: 52.h,
                                        alignment: Alignment.centerLeft,
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "lbl_mega_contest".tr,
                                              style: TextStyle(
                                                color:
                                                    theme.colorScheme.primary,
                                                fontSize: 12.fSize,
                                                fontFamily: 'Open Sans',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Text(
                                              "lbl_1_5_crore".tr,
                                              style: TextStyle(
                                                color: theme.colorScheme
                                                    .onPrimaryContainer
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
                                Padding(
                                  padding: EdgeInsets.only(top: 11.v),
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                          width: 61.h,
                                          decoration: AppDecoration
                                              .gradientRedAToPrimary
                                              .copyWith(
                                            borderRadius:
                                                BorderRadiusStyle.circleBorder6,
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
                                                horizontal: 16.h,
                                                vertical: 1.v,
                                              ),
                                              child: Text(
                                                "lbl_live".tr,
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
                                      ),
                                      SizedBox(height: 5.v),
                                      Text(
                                        "msg_entry_fee_free".tr,
                                        style: TextStyle(
                                          color: theme
                                              .colorScheme.onPrimaryContainer
                                              .withOpacity(1),
                                          fontSize: 12.fSize,
                                          fontFamily: 'Nunito Sans',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 1.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgGroup427318361,
                            height: 5.v,
                            width: 317.h,
                          ),
                          SizedBox(height: 1.v),
                          Padding(
                            padding: EdgeInsets.only(right: 3.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 1.v),
                                  child: Text(
                                    "lbl_50_000_spots".tr,
                                    style: TextStyle(
                                      color: theme
                                          .colorScheme.onPrimaryContainer
                                          .withOpacity(1),
                                      fontSize: 10.fSize,
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Text(
                                  "lbl_20_left".tr,
                                  style: TextStyle(
                                    color: theme.colorScheme.onPrimaryContainer
                                        .withOpacity(1),
                                    fontSize: 10.fSize,
                                    fontFamily: 'Nunito Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 2.v),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 5.h,
                              right: 3.h,
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
                                        "lbl_20_000_winners".tr,
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
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 47.v),
          CustomImageView(
            imagePath: ImageConstant.imgImage1,
            height: 182.v,
            width: 268.h,
          ),
          SizedBox(height: 21.v),
          SizedBox(
            width: 82.h,
            child: Text(
              "msg_play_more_win_more".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                fontSize: 16.fSize,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
