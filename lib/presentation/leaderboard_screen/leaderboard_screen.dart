import '../leaderboard_screen/widgets/componenttwo_item_widget.dart';
import 'models/componenttwo_item_model.dart';
import 'notifier/leaderboard_notifier.dart';
import 'package:flutter/material.dart';
import 'package:insource/core/app_export.dart';
import 'package:insource/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:insource/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:insource/widgets/app_bar/custom_app_bar.dart';
import 'package:insource/widgets/custom_icon_button.dart';
import 'package:insource/widgets/custom_outlined_button.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class LeaderboardScreen extends ConsumerStatefulWidget {
  const LeaderboardScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LeaderboardScreenState createState() => LeaderboardScreenState();
}

class LeaderboardScreenState extends ConsumerState<LeaderboardScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 16.v),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: Column(
                children: [
                  _buildCard(context),
                  SizedBox(height: 16.v),
                  _buildSamPortfolio(context),
                  SizedBox(height: 15.v),
                  _buildTitle(context),
                  SizedBox(height: 13.v),
                  _buildComponentTwo(context),
                ],
              ),
            ),
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
  Widget _buildCard(BuildContext context) {
    return SizedBox(
      height: 150.v,
      width: 342.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGraphGreenA400,
            height: 114.v,
            width: 309.h,
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 11.v),
          ),
          Align(
            alignment: Alignment.center,
            child: OutlineGradientButton(
              padding: EdgeInsets.only(
                left: 1.h,
                top: 1.v,
                right: 1.h,
                bottom: 1.v,
              ),
              strokeWidth: 1.h,
              gradient: LinearGradient(
                begin: Alignment(0.97, 1),
                end: Alignment(0, 0),
                colors: [
                  theme.colorScheme.onPrimaryContainer.withOpacity(0.2),
                  theme.colorScheme.onPrimaryContainer.withOpacity(0.1),
                  theme.colorScheme.onPrimaryContainer.withOpacity(0.05),
                ],
              ),
              corners: Corners(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 18.h,
                  vertical: 17.v,
                ),
                decoration: AppDecoration
                    .gradientOnPrimaryContainerToOnPrimaryContainer5
                    .copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgProfile18x18,
                            height: 57.adaptSize,
                            width: 57.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 9.h,
                              top: 5.v,
                              bottom: 9.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_id_0013231321".tr,
                                  style: TextStyle(
                                    color: theme.colorScheme.primary,
                                    fontSize: 12.fSize,
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 3.v),
                                Text(
                                  "lbl_shashank".tr,
                                  style: TextStyle(
                                    color: theme.colorScheme.onPrimaryContainer
                                        .withOpacity(1),
                                    fontSize: 16.fSize,
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 15.v,
                              bottom: 9.v,
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
                              child: CustomOutlinedButton(
                                width: 61.h,
                                text: "lbl_level_6".tr,
                                buttonStyle: CustomButtonStyles.none,
                                decoration: CustomButtonStyles
                                    .gradientRedAToPrimaryDecoration,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 13.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(left: 19.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: 25.h,
                              child: Text(
                                "lbl_w_r_69".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: theme.colorScheme.primary,
                                  fontSize: 12.fSize,
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Spacer(
                              flex: 50,
                            ),
                            SizedBox(
                              width: 70.h,
                              child: Text(
                                "lbl_game_plade_267".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: theme.colorScheme.primary,
                                  fontSize: 12.fSize,
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Spacer(
                              flex: 50,
                            ),
                            SizedBox(
                              width: 80.h,
                              child: Text(
                                "msg_total_winning_5_8".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: theme.colorScheme.primary,
                                  fontSize: 12.fSize,
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.v),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSamPortfolio(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 6.h,
            right: 19.h,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "lbl_sam_portfolio".tr,
                style: TextStyle(
                  color: appTheme.yellow700,
                  fontSize: 14.73043441772461.fSize,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 4.v),
                child: Text(
                  "lbl_9_772".tr,
                  style: TextStyle(
                    color: appTheme.redA700,
                    fontSize: 11.550000190734863.fSize,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 12.v),
        Column(
          children: [
            _buildPortfolioCoin2(
              context,
              bTC: "lbl_btc".tr,
              bitcoin: "lbl_bitcoin".tr,
              x: "lbl_x2".tr,
              price: "lbl_30_588".tr,
              oneHundredEightyNine: "lbl_1_89".tr,
            ),
            SizedBox(height: 10.v),
            _buildPortfolioCoin1(
              context,
              fTT: "lbl_ftt".tr,
              fTX: "lbl_ftx".tr,
              x: "lbl_x2".tr,
              price: "lbl_30_588".tr,
              eightyNine: "lbl_0_89".tr,
            ),
            SizedBox(height: 10.v),
            _buildPortfolioCoin1(
              context,
              fTT: "lbl_ftt".tr,
              fTX: "lbl_ftx".tr,
              x: "lbl_x2".tr,
              price: "lbl_30_588".tr,
              eightyNine: "lbl_0_89".tr,
            ),
            SizedBox(height: 10.v),
            _buildPortfolioCoin2(
              context,
              bTC: "lbl_btc".tr,
              bitcoin: "lbl_bitcoin".tr,
              x: "lbl_x2".tr,
              price: "lbl_30_588".tr,
              oneHundredEightyNine: "lbl_1_89".tr,
            ),
            SizedBox(height: 10.v),
            _buildPortfolioCoin1(
              context,
              fTT: "lbl_ftt".tr,
              fTX: "lbl_ftx".tr,
              x: "lbl_x2".tr,
              price: "lbl_30_588".tr,
              eightyNine: "lbl_0_89".tr,
            ),
          ],
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTitle(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 6.h,
        right: 13.h,
      ),
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
              "lbl_leaderboard".tr,
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
              style: TextStyle(
                color: appTheme.blueGray10001,
                fontSize: 11.550000190734863.fSize,
                fontFamily: 'Nunito Sans',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildComponentTwo(BuildContext context) {
    return Consumer(
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
                  .watch(leaderboardNotifier)
                  .leaderboardModelObj
                  ?.componenttwoItemList
                  .length ??
              0,
          itemBuilder: (context, index) {
            ComponenttwoItemModel model = ref
                    .watch(leaderboardNotifier)
                    .leaderboardModelObj
                    ?.componenttwoItemList[index] ??
                ComponenttwoItemModel();
            return ComponenttwoItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Common widget
  Widget _buildPortfolioCoin1(
    BuildContext context, {
    required String fTT,
    required String fTX,
    required String x,
    required String price,
    required String eightyNine,
  }) {
    return Container(
      decoration: AppDecoration.gradientOnPrimaryContainerToOnPrimaryContainer2
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
            appTheme.redA700.withOpacity(0.2),
            appTheme.redA700.withOpacity(0.2),
          ],
        ),
        corners: Corners(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 9.h),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.v),
                child: CustomIconButton(
                  height: 25.adaptSize,
                  width: 25.adaptSize,
                  padding: EdgeInsets.all(5.h),
                  decoration: IconButtonStyleHelper.fillTeal,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgMegaphone,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 19.h,
                  top: 2.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        fTT,
                        style: TextStyle(
                          color: theme.colorScheme.onPrimaryContainer
                              .withOpacity(1),
                          fontSize: 12.fSize,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Text(
                      fTX,
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
              Spacer(),
              Padding(
                padding: EdgeInsets.only(
                  top: 10.v,
                  bottom: 7.v,
                ),
                child: Text(
                  x,
                  style: TextStyle(
                    color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                    fontSize: 12.fSize,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgGraph30x60,
                height: 30.v,
                width: 60.h,
                margin: EdgeInsets.only(
                  left: 27.h,
                  top: 2.v,
                  bottom: 2.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 23.h,
                  right: 9.h,
                ),
                child: Column(
                  children: [
                    Text(
                      price,
                      style: TextStyle(
                        color:
                            theme.colorScheme.onPrimaryContainer.withOpacity(1),
                        fontSize: 12.fSize,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        eightyNine,
                        style: TextStyle(
                          color: appTheme.redA700,
                          fontSize: 12.fSize,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w600,
                        ),
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

  /// Common widget
  Widget _buildPortfolioCoin2(
    BuildContext context, {
    required String bTC,
    required String bitcoin,
    required String x,
    required String price,
    required String oneHundredEightyNine,
  }) {
    return Container(
      decoration: AppDecoration.gradientOnPrimaryContainerToOnPrimaryContainer3
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
            appTheme.greenA70001.withOpacity(0.2),
            appTheme.greenA70001.withOpacity(0.2),
          ],
        ),
        corners: Corners(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 9.h),
          child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgComponent1,
                height: 25.adaptSize,
                width: 25.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 5.v),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 19.h,
                  top: 2.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      bTC,
                      style: TextStyle(
                        color:
                            theme.colorScheme.onPrimaryContainer.withOpacity(1),
                        fontSize: 12.fSize,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      bitcoin,
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
              Spacer(),
              Padding(
                padding: EdgeInsets.only(
                  top: 10.v,
                  bottom: 7.v,
                ),
                child: Text(
                  x,
                  style: TextStyle(
                    color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                    fontSize: 12.fSize,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgGraph1,
                height: 30.v,
                width: 60.h,
                margin: EdgeInsets.only(
                  left: 27.h,
                  top: 2.v,
                  bottom: 2.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 23.h,
                  right: 9.h,
                ),
                child: Column(
                  children: [
                    Text(
                      price,
                      style: TextStyle(
                        color:
                            theme.colorScheme.onPrimaryContainer.withOpacity(1),
                        fontSize: 12.fSize,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        oneHundredEightyNine,
                        style: TextStyle(
                          color: appTheme.greenA70002,
                          fontSize: 12.fSize,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w600,
                        ),
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
