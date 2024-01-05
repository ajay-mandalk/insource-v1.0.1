import 'notifier/profile_notifier.dart';
import 'package:flutter/material.dart';
import 'package:insource/core/app_export.dart';
import 'package:insource/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:insource/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:insource/widgets/app_bar/custom_app_bar.dart';
import 'package:insource/widgets/custom_icon_button.dart';
import 'package:insource/widgets/custom_switch.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileScreenState createState() => ProfileScreenState();
}

class ProfileScreenState extends ConsumerState<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 4.v),
              _buildCard(context),
              SizedBox(height: 17.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 52.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildFrame(
                      context,
                      rewards: "lbl_deposit".tr,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: _buildFrame(
                        context,
                        rewards: "lbl_rewards".tr,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: Column(
                        children: [
                          CustomIconButton(
                            height: 56.adaptSize,
                            width: 56.adaptSize,
                            padding: EdgeInsets.all(15.h),
                            decoration: IconButtonStyleHelper
                                .outlineOnPrimaryContainerTL28,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgIconMoneySend,
                            ),
                          ),
                          Text(
                            "lbl_withdraw".tr,
                            style: TextStyle(
                              color: theme.colorScheme.primary,
                              fontSize: 12.fSize,
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
              SizedBox(height: 23.v),
              Divider(
                color: appTheme.blueGray4009b,
                indent: 53.h,
                endIndent: 52.h,
              ),
              SizedBox(height: 15.v),
              _buildThumbsUp(context),
              SizedBox(height: 32.v),
              _buildTelevision(context),
              SizedBox(height: 7.v),
              SizedBox(
                height: 422.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgChartGraphisRedA400422x390,
                      height: 422.v,
                      width: 390.h,
                      alignment: Alignment.center,
                    ),
                    _buildMdiInvite(context),
                  ],
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
          imagePath: ImageConstant.imgUserInterface,
          margin: EdgeInsets.symmetric(
            horizontal: 27.h,
            vertical: 4.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCard(BuildContext context) {
    return SizedBox(
      height: 111.v,
      width: 342.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGraphGreenA400,
            height: 85.v,
            width: 309.h,
            alignment: Alignment.center,
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
                padding: EdgeInsets.symmetric(vertical: 1.v),
                decoration: AppDecoration
                    .gradientOnPrimaryContainerToOnPrimaryContainer5
                    .copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 7.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 12.h,
                        right: 17.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 50.adaptSize,
                            width: 50.adaptSize,
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgProfile18x18,
                                  height: 50.adaptSize,
                                  width: 50.adaptSize,
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
                              bottom: 13.v,
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
                                Text(
                                  "lbl_hi_guest".tr,
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
                          Container(
                            width: 61.h,
                            margin: EdgeInsets.only(
                              top: 7.v,
                              bottom: 20.v,
                            ),
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
                                padding: EdgeInsets.symmetric(horizontal: 6.h),
                                child: Text(
                                  "lbl_signup2".tr,
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
                        ],
                      ),
                    ),
                    SizedBox(height: 28.v),
                    Divider(
                      color: appTheme.blueGray4009b,
                    ),
                    SizedBox(height: 2.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 68.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgTelevisionPrimary,
                                  height: 12.v,
                                  width: 14.h,
                                  margin: EdgeInsets.only(
                                    top: 1.v,
                                    bottom: 3.v,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 3.h),
                                  child: Text(
                                    "lbl_rs_10000".tr,
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
                          Spacer(),
                          Text(
                            "lbl_total".tr,
                            style: TextStyle(
                              color: theme.colorScheme.primary,
                              fontSize: 12.fSize,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: Text(
                              "lbl_rs_1_48_m".tr,
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
  Widget _buildThumbsUp(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgThumbsUp,
            height: 33.v,
            width: 27.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              top: 5.v,
              bottom: 6.v,
            ),
            child: Text(
              "msg_switch_to_stocks".tr,
              style: TextStyle(
                color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                fontSize: 16.012821197509766.fSize,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Spacer(),
          Consumer(
            builder: (context, ref, _) {
              return CustomSwitch(
                margin: EdgeInsets.only(
                  top: 4.v,
                  bottom: 3.v,
                ),
                value: ref.watch(profileNotifier).isSelectedSwitch,
                onChange: (value) {
                  ref.read(profileNotifier.notifier).changeSwitchBox1(value);
                },
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTelevision(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 26.h,
        right: 30.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgTelevisionGray500,
            height: 24.v,
            width: 27.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              bottom: 2.v,
            ),
            child: Text(
              "lbl_wallet".tr,
              style: TextStyle(
                color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                fontSize: 16.012821197509766.fSize,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgIconArrowRight,
            height: 12.v,
            width: 5.h,
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 10.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMdiInvite(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 24.h,
          right: 30.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgMdiInviteGray500,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25.h),
                    child: Text(
                      "msg_referral_share".tr,
                      style: TextStyle(
                        color:
                            theme.colorScheme.onPrimaryContainer.withOpacity(1),
                        fontSize: 16.012821197509766.fSize,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgIconArrowRight,
                    height: 12.v,
                    width: 5.h,
                    margin: EdgeInsets.only(
                      top: 6.v,
                      bottom: 5.v,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 29.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgProfile,
                  height: 31.v,
                  width: 32.h,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 19.h,
                    top: 6.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "lbl_help_support".tr,
                    style: TextStyle(
                      color:
                          theme.colorScheme.onPrimaryContainer.withOpacity(1),
                      fontSize: 16.012821197509766.fSize,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgIconArrowRight,
                  height: 12.v,
                  width: 5.h,
                  margin: EdgeInsets.only(
                    top: 15.v,
                    bottom: 3.v,
                  ),
                ),
              ],
            ),
            SizedBox(height: 238.v),
            Container(
              width: 267.h,
              margin: EdgeInsets.only(
                left: 35.h,
                right: 32.h,
              ),
              child: Text(
                "msg_disclaimer_terms".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: appTheme.indigo50,
                  fontSize: 13.696001052856445.fSize,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String rewards,
  }) {
    return Column(
      children: [
        CustomIconButton(
          height: 56.adaptSize,
          width: 56.adaptSize,
          padding: EdgeInsets.all(10.h),
          decoration: IconButtonStyleHelper.outlineOnPrimaryContainerTL28,
          child: CustomImageView(
            imagePath: ImageConstant.imgGoldMedal,
          ),
        ),
        Text(
          rewards,
          style: TextStyle(
            color: theme.colorScheme.primary,
            fontSize: 12.fSize,
            fontFamily: 'Open Sans',
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
