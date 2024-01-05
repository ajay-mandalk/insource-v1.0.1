import '../contest_detail_screen/widgets/rankingrow_item_widget.dart';
import 'models/rankingrow_item_model.dart';
import 'notifier/contest_detail_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:insource/core/app_export.dart';
import 'package:insource/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:insource/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:insource/widgets/app_bar/custom_app_bar.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class ContestDetailScreen extends ConsumerStatefulWidget {
  const ContestDetailScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ContestDetailScreenState createState() => ContestDetailScreenState();
}

class ContestDetailScreenState extends ConsumerState<ContestDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 16.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _buildContestCard(context),
              SizedBox(height: 15.v),
              _buildContestDetails(context),
              SizedBox(height: 15.v),
              _buildCrown(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 72.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 4.v,
          bottom: 4.v,
        ),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgIconLinearBell,
          margin: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 4.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildContestCard(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 24.h),
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
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 1.h),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                          width: 64.h,
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
                                                  horizontal: 14.h),
                                              child: Text(
                                                "lbl_join".tr,
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
                          CustomImageView(
                            imagePath: ImageConstant.imgGroup427318361,
                            height: 5.v,
                            width: 317.h,
                          ),
                        ],
                      ),
                      SizedBox(height: 1.v),
                      Padding(
                        padding: EdgeInsets.only(right: 4.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 1.v),
                              child: Text(
                                "lbl_50_000_spots".tr,
                                style: TextStyle(
                                  color: theme.colorScheme.onPrimaryContainer
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
    );
  }

  /// Section Widget
  Widget _buildContestDetails(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "lbl_contest_details".tr,
              style: TextStyle(
                color: appTheme.yellow700,
                fontSize: 14.73043441772461.fSize,
                fontFamily: 'Nunito Sans',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(height: 13.v),
          SizedBox(
            height: 156.v,
            width: 342.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGraph,
                  height: 156.v,
                  width: 299.h,
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.only(
                      top: 2.v,
                      bottom: 1.v,
                    ),
                    decoration: AppDecoration
                        .gradientOnPrimaryContainerToOnPrimaryContainer1
                        .copyWith(
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
                          theme.colorScheme.onPrimaryContainer
                              .withOpacity(0.15),
                          theme.colorScheme.onPrimaryContainer
                              .withOpacity(0.03),
                        ],
                      ),
                      corners: Corners(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 5.h,
                          vertical: 1.v,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 14.v,
                                bottom: 6.v,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "msg_reward_pool_rs".tr,
                                    style: TextStyle(
                                      color: theme
                                          .colorScheme.onPrimaryContainer
                                          .withOpacity(1),
                                      fontSize: 12.fSize,
                                      fontFamily: 'Nunito Sans',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(height: 5.v),
                                  Text(
                                    "msg_contest_duration".tr,
                                    style: TextStyle(
                                      color: theme
                                          .colorScheme.onPrimaryContainer
                                          .withOpacity(1),
                                      fontSize: 12.fSize,
                                      fontFamily: 'Nunito Sans',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(height: 5.v),
                                  Text(
                                    "msg_start_time_9_30".tr,
                                    style: TextStyle(
                                      color: theme
                                          .colorScheme.onPrimaryContainer
                                          .withOpacity(1),
                                      fontSize: 12.fSize,
                                      fontFamily: 'Nunito Sans',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(height: 6.v),
                                  Text(
                                    "msg_min_player_200".tr,
                                    style: TextStyle(
                                      color: theme
                                          .colorScheme.onPrimaryContainer
                                          .withOpacity(1),
                                      fontSize: 12.fSize,
                                      fontFamily: 'Nunito Sans',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(height: 5.v),
                                  Text(
                                    "msg_max_player_10000".tr,
                                    style: TextStyle(
                                      color: theme
                                          .colorScheme.onPrimaryContainer
                                          .withOpacity(1),
                                      fontSize: 12.fSize,
                                      fontFamily: 'Nunito Sans',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(height: 5.v),
                                  Text(
                                    "msg_participate_fee".tr,
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
                            CustomImageView(
                              imagePath: ImageConstant.imgPngtreeGoldTr,
                              height: 146.adaptSize,
                              width: 146.adaptSize,
                              margin: EdgeInsets.only(
                                left: 6.h,
                                top: 3.v,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCrown(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.h),
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 6.h),
            child: IntrinsicWidth(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgCrown,
                    height: 15.adaptSize,
                    width: 15.adaptSize,
                    margin: EdgeInsets.only(
                      top: 2.v,
                      bottom: 3.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Text(
                      "msg_reward_distribution".tr,
                      style: TextStyle(
                        color: appTheme.yellow700,
                        fontSize: 14.73043441772461.fSize,
                        fontFamily: 'Nunito Sans',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(bottom: 3.v),
                    child: Text(
                      "lbl_1v4".tr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: appTheme.gray800,
                        fontSize: 11.550000190734863.fSize,
                        fontFamily: 'Nunito Sans',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 13.v),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(right: 24.h),
                decoration: AppDecoration
                    .gradientOnPrimaryContainerToOnPrimaryContainer4
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
                      horizontal: 17.h,
                      vertical: 3.v,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 5.v,
                            bottom: 2.v,
                          ),
                          child: Text(
                            "lbl_1".tr,
                            style: TextStyle(
                              color: theme.colorScheme.primary,
                              fontSize: 12.fSize,
                              fontFamily: 'Nunito Sans',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Container(
                          height: 21.v,
                          width: 79.h,
                          margin: EdgeInsets.only(
                            left: 36.h,
                            top: 2.v,
                            bottom: 1.v,
                          ),
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgIcon16x12,
                                      height: 16.v,
                                      width: 12.h,
                                      margin: EdgeInsets.only(top: 3.v),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 5.h),
                                      child: Text(
                                        "lbl_winner".tr,
                                        style: TextStyle(
                                          color: theme.colorScheme.primary,
                                          fontSize: 14.fSize,
                                          fontFamily: 'Open Sans',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgIcon,
                                height: 16.v,
                                width: 14.h,
                                alignment: Alignment.bottomLeft,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 62.h,
                            top: 4.v,
                            right: 20.h,
                          ),
                          child: Text(
                            "lbl_rs_1_00_0000".tr,
                            style: TextStyle(
                              color: appTheme.yellow700,
                              fontSize: 14.73043441772461.fSize,
                              fontFamily: 'Nunito Sans',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.v),
              Padding(
                padding: EdgeInsets.only(right: 24.h),
                child: Consumer(
                  builder: (context, ref, _) {
                    return ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (
                        context,
                        index,
                      ) {
                        return SizedBox(
                          height: 10.v,
                        );
                      },
                      itemCount: ref
                              .watch(contestDetailNotifier)
                              .contestDetailModelObj
                              ?.rankingrowItemList
                              .length ??
                          0,
                      itemBuilder: (context, index) {
                        RankingrowItemModel model = ref
                                .watch(contestDetailNotifier)
                                .contestDetailModelObj
                                ?.rankingrowItemList[index] ??
                            RankingrowItemModel();
                        return RankingrowItemWidget(
                          model,
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: Text(
                "msg_contest_pool_rules".tr,
                style: TextStyle(
                  color: appTheme.blueGray10001,
                  fontSize: 14.fSize,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
