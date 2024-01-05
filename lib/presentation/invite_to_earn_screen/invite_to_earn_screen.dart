import 'notifier/invite_to_earn_notifier.dart';
import 'package:flutter/material.dart';
import 'package:insource/core/app_export.dart';
import 'package:insource/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:insource/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:insource/widgets/app_bar/custom_app_bar.dart';
import 'package:insource/widgets/custom_elevated_button.dart';
import 'package:insource/widgets/custom_icon_button.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class InviteToEarnScreen extends ConsumerStatefulWidget {
  const InviteToEarnScreen({Key? key})
      : super(
          key: key,
        );

  @override
  InviteToEarnScreenState createState() => InviteToEarnScreenState();
}

class InviteToEarnScreenState extends ConsumerState<InviteToEarnScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 31.v,
          ),
          child: Column(
            children: [
              _buildPriceRow(context),
              SizedBox(height: 18.v),
              _buildInviteRow(context),
              SizedBox(height: 43.v),
              _buildInviteColumn(context),
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
  Widget _buildPriceRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 29.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_earn_5000".tr,
                  style: TextStyle(
                    color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                    fontSize: 18.fSize,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Opacity(
                  opacity: 0.5,
                  child: Text(
                    "msg_refer_your_friend".tr,
                    style: TextStyle(
                      color: theme.colorScheme.onPrimaryContainer
                          .withOpacity(0.53),
                      fontSize: 14.fSize,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImageRemovebgPreview104x157,
            height: 104.v,
            width: 157.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInviteRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 4.h),
      decoration: AppDecoration.gradientOnPrimaryContainerToOnPrimaryContainer8
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
          topLeft: Radius.circular(9),
          topRight: Radius.circular(9),
          bottomLeft: Radius.circular(9),
          bottomRight: Radius.circular(9),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 7.v,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 1.h,
                  bottom: 1.v,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 12.h,
                  vertical: 8.v,
                ),
                decoration:
                    AppDecoration.gradientErrorContainerToOrange.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder10,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_500".tr,
                      style: TextStyle(
                        color:
                            theme.colorScheme.onPrimaryContainer.withOpacity(1),
                        fontSize: 24.fSize,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Opacity(
                      opacity: 0.8,
                      child: Text(
                        "lbl_collected".tr,
                        style: TextStyle(
                          color: theme.colorScheme.onPrimaryContainer,
                          fontSize: 12.fSize,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 15.h,
                  top: 11.v,
                  bottom: 8.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Opacity(
                          opacity: 0.67,
                          child: Padding(
                            padding: EdgeInsets.only(top: 1.v),
                            child: Text(
                              "msg_invite_accepted".tr,
                              style: TextStyle(
                                color: theme.colorScheme.onPrimaryContainer
                                    .withOpacity(0.59),
                                fontSize: 12.fSize,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 11.h),
                          child: Text(
                            "lbl_10".tr,
                            style: TextStyle(
                              color: theme.colorScheme.onPrimaryContainer
                                  .withOpacity(1),
                              fontSize: 12.fSize,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 6.v),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 126.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Opacity(
                              opacity: 0.67,
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 1.v),
                                child: Text(
                                  "lbl_next_reward".tr,
                                  style: TextStyle(
                                    color: theme.colorScheme.onPrimaryContainer
                                        .withOpacity(0.59),
                                    fontSize: 12.fSize,
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "lbl_1000".tr,
                              style: TextStyle(
                                color: theme.colorScheme.onPrimaryContainer
                                    .withOpacity(1),
                                fontSize: 12.fSize,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgArrowRight,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(
                  top: 19.v,
                  bottom: 20.v,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildInviteColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Opacity(
                opacity: 0.1,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 7.v,
                    bottom: 8.v,
                  ),
                  child: SizedBox(
                    width: 110.h,
                    child: Divider(),
                  ),
                ),
              ),
              Text(
                "lbl_how_it_works".tr,
                style: TextStyle(
                  color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                  fontSize: 12.fSize,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w600,
                ),
              ),
              Opacity(
                opacity: 0.1,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 7.v,
                    bottom: 8.v,
                  ),
                  child: SizedBox(
                    width: 104.h,
                    child: Divider(),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.only(
              left: 14.h,
              right: 21.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 207.v,
                  width: 39.h,
                  margin: EdgeInsets.only(bottom: 2.v),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Opacity(
                        opacity: 0.3,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgVector1,
                          height: 190.v,
                          width: 16.h,
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 8.h),
                        ),
                      ),
                      CustomIconButton(
                        height: 39.adaptSize,
                        width: 39.adaptSize,
                        padding: EdgeInsets.all(9.h),
                        decoration:
                            IconButtonStyleHelper.fillOnPrimaryContainerTL19,
                        alignment: Alignment.topCenter,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGroup9,
                        ),
                      ),
                      CustomIconButton(
                        height: 39.adaptSize,
                        width: 39.adaptSize,
                        padding: EdgeInsets.all(9.h),
                        decoration:
                            IconButtonStyleHelper.fillOnPrimaryContainerTL19,
                        alignment: Alignment.center,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGroup839x39,
                        ),
                      ),
                      CustomIconButton(
                        height: 39.adaptSize,
                        width: 39.adaptSize,
                        padding: EdgeInsets.all(9.h),
                        decoration:
                            IconButtonStyleHelper.fillOnPrimaryContainerTL19,
                        alignment: Alignment.bottomCenter,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGroup7,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 15.h,
                      top: 5.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Opacity(
                          opacity: 0.9,
                          child: Text(
                            "msg_invite_your_friends".tr,
                            style: TextStyle(
                              color: theme.colorScheme.onPrimaryContainer
                                  .withOpacity(0.67),
                              fontSize: 12.fSize,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        Opacity(
                          opacity: 0.6,
                          child: SizedBox(
                            width: 228.h,
                            child: Text(
                              "msg_share_the_link_with".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: theme.colorScheme.onPrimaryContainer
                                    .withOpacity(0.56),
                                fontSize: 10.fSize,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 36.v),
                        Opacity(
                          opacity: 0.9,
                          child: Text(
                            "msg_get_50_when_signup".tr,
                            style: TextStyle(
                              color: theme.colorScheme.onPrimaryContainer
                                  .withOpacity(0.67),
                              fontSize: 12.fSize,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        Opacity(
                          opacity: 0.6,
                          child: Container(
                            width: 227.h,
                            margin: EdgeInsets.only(right: 1.h),
                            child: Text(
                              "msg_when_your_friend".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: theme.colorScheme.onPrimaryContainer
                                    .withOpacity(0.56),
                                fontSize: 10.fSize,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 39.v),
                        Opacity(
                          opacity: 0.9,
                          child: Text(
                            "msg_get_50_when_watched".tr,
                            style: TextStyle(
                              color: theme.colorScheme.onPrimaryContainer
                                  .withOpacity(0.67),
                              fontSize: 12.fSize,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        Opacity(
                          opacity: 0.6,
                          child: Container(
                            width: 227.h,
                            margin: EdgeInsets.only(right: 1.h),
                            child: Text(
                              "msg_when_your_friend".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: theme.colorScheme.onPrimaryContainer
                                    .withOpacity(0.56),
                                fontSize: 10.fSize,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w300,
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
          SizedBox(height: 42.v),
          Opacity(
            opacity: 0.1,
            child: Divider(
              color: theme.colorScheme.onPrimaryContainer.withOpacity(0.39),
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(
              left: 5.h,
              right: 8.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_see_all_faqs".tr,
                  style: TextStyle(
                    color: appTheme.blueGray10001,
                    fontSize: 12.fSize,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Opacity(
                  opacity: 0.5,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgProfileOnprimarycontainer,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                    margin: EdgeInsets.only(left: 8.h),
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgIconGray100,
                  height: 5.v,
                  width: 9.h,
                  margin: EdgeInsets.symmetric(vertical: 6.v),
                ),
              ],
            ),
          ),
          SizedBox(height: 13.v),
          Opacity(
            opacity: 0.1,
            child: Divider(
              color: theme.colorScheme.onPrimaryContainer.withOpacity(0.39),
            ),
          ),
          SizedBox(height: 25.v),
          Padding(
            padding: EdgeInsets.only(right: 6.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: CustomElevatedButton(
                    text: "lbl_invite".tr,
                    buttonStyle: CustomButtonStyles.none,
                    decoration:
                        CustomButtonStyles.gradientPrimaryToRedATL8Decoration,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgWhatsapp,
                  height: 29.adaptSize,
                  width: 29.adaptSize,
                  margin: EdgeInsets.only(
                    left: 22.h,
                    top: 9.v,
                    bottom: 8.v,
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
