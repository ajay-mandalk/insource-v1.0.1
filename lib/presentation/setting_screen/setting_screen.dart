import 'notifier/setting_notifier.dart';
import 'package:flutter/material.dart';
import 'package:insource/core/app_export.dart';
import 'package:insource/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:insource/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:insource/widgets/app_bar/custom_app_bar.dart';
import 'package:insource/widgets/custom_outlined_button.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class SettingScreen extends ConsumerStatefulWidget {
  const SettingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SettingScreenState createState() => SettingScreenState();
}

class SettingScreenState extends ConsumerState<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          height: 768.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgChartGraphisRedA400385x390,
                height: 385.v,
                width: 390.h,
                alignment: Alignment.bottomCenter,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 24.h,
                    top: 5.v,
                    right: 24.h,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildTitle(context),
                      SizedBox(height: 10.v),
                      _buildProfileCard(context),
                      SizedBox(height: 14.v),
                      _buildYourJourney(context),
                      SizedBox(height: 11.v),
                      _buildYourRewards(context),
                    ],
                  ),
                ),
              ),
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
  Widget _buildTitle(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 11.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_your_profile".tr,
            style: TextStyle(
              color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
              fontSize: 20.fSize,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w600,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgUserGray500,
            height: 12.adaptSize,
            width: 12.adaptSize,
            margin: EdgeInsets.only(
              top: 7.v,
              bottom: 8.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileCard(BuildContext context) {
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
                          SizedBox(
                            height: 57.adaptSize,
                            width: 57.adaptSize,
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgProfile18x18,
                                  height: 57.adaptSize,
                                  width: 57.adaptSize,
                                  alignment: Alignment.center,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgCheck,
                                  height: 15.adaptSize,
                                  width: 15.adaptSize,
                                  alignment: Alignment.topRight,
                                ),
                              ],
                            ),
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
  Widget _buildYourJourney(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 11.h),
          child: Text(
            "lbl_your_journey".tr,
            style: TextStyle(
              color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
              fontSize: 20.fSize,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(height: 7.v),
        SizedBox(
          height: 111.v,
          width: 342.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGraphGreenA400,
                height: 85.v,
                width: 309.h,
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 8.v),
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
                      horizontal: 19.h,
                      vertical: 11.v,
                    ),
                    decoration: AppDecoration
                        .gradientOnPrimaryContainerToOnPrimaryContainer5
                        .copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 61.h,
                          decoration:
                              AppDecoration.gradientRedAToPrimary.copyWith(
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
                                horizontal: 6.h,
                                vertical: 1.v,
                              ),
                              child: Text(
                                "lbl_level_6".tr,
                                style: TextStyle(
                                  color: theme.colorScheme.onPrimaryContainer
                                      .withOpacity(1),
                                  fontSize: 14.fSize,
                                  fontFamily: 'Open Sans',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 7.v),
                        Padding(
                          padding: EdgeInsets.only(right: 6.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 8.v),
                                child: Text(
                                  "lbl_52".tr,
                                  style: TextStyle(
                                    color: theme.colorScheme.primary,
                                    fontSize: 14.fSize,
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 8.h,
                                    top: 4.v,
                                  ),
                                  child: Column(
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgGroup427318361,
                                        height: 6.v,
                                        width: 260.h,
                                      ),
                                      SizedBox(height: 2.v),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "lbl_50_000_xp".tr,
                                            style: TextStyle(
                                              color: theme.colorScheme
                                                  .onPrimaryContainer
                                                  .withOpacity(1),
                                              fontSize: 10.fSize,
                                              fontFamily: 'Open Sans',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            "lbl_20_left".tr,
                                            style: TextStyle(
                                              color: theme.colorScheme
                                                  .onPrimaryContainer
                                                  .withOpacity(1),
                                              fontSize: 10.fSize,
                                              fontFamily: 'Open Sans',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 8.h,
                                  bottom: 8.v,
                                ),
                                child: Text(
                                  "lbl_6".tr,
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
                        SizedBox(height: 1.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 51.h),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 60.h,
                                  child: Text(
                                    "msg_contest_played_45".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: theme
                                          .colorScheme.onPrimaryContainer
                                          .withOpacity(1),
                                      fontSize: 8.738672256469727.fSize,
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 53.h,
                                  margin: EdgeInsets.only(left: 71.h),
                                  child: Text(
                                    "lbl_contest_won_26".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: theme
                                          .colorScheme.onPrimaryContainer
                                          .withOpacity(1),
                                      fontSize: 9.025185585021973.fSize,
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.w600,
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
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildYourRewards(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 11.h),
          child: Text(
            "lbl_your_rewards".tr,
            style: TextStyle(
              color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
              fontSize: 20.fSize,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(height: 10.v),
        SizedBox(
          height: 111.v,
          width: 342.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGraphGreenA400,
                height: 85.v,
                width: 309.h,
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 8.v),
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
                      horizontal: 11.h,
                      vertical: 14.v,
                    ),
                    decoration: AppDecoration
                        .gradientOnPrimaryContainerToOnPrimaryContainer5
                        .copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: 315.h,
                            child: Divider(),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 32.h,
                              right: 25.h,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                _buildCrypto(
                                  context,
                                  cryptoImage: ImageConstant.imgWallet,
                                  bonusCashText: "lbl_my_winning".tr,
                                  threeThousandText: "lbl_5_000".tr,
                                ),
                                SizedBox(height: 20.v),
                                _buildCrypto(
                                  context,
                                  cryptoImage: ImageConstant.imgCrypto,
                                  bonusCashText: "lbl_bonus_cash".tr,
                                  threeThousandText: "lbl_3_000".tr,
                                ),
                              ],
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
      ],
    );
  }

  /// Common widget
  Widget _buildCrypto(
    BuildContext context, {
    required String cryptoImage,
    required String bonusCashText,
    required String threeThousandText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: cryptoImage,
          height: 30.adaptSize,
          width: 30.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 11.h,
            top: 5.v,
            bottom: 6.v,
          ),
          child: Text(
            bonusCashText,
            style: TextStyle(
              color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
              fontSize: 13.03637981414795.fSize,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 117.h,
            top: 3.v,
            bottom: 9.v,
          ),
          child: Text(
            threeThousandText,
            style: TextStyle(
              color: theme.colorScheme.primary,
              fontSize: 12.fSize,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
