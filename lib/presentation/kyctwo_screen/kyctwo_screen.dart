import 'notifier/kyctwo_notifier.dart';
import 'package:flutter/material.dart';
import 'package:insource/core/app_export.dart';
import 'package:insource/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:insource/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:insource/widgets/app_bar/custom_app_bar.dart';
import 'package:insource/widgets/custom_checkbox_button.dart';
import 'package:insource/widgets/custom_elevated_button.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class KyctwoScreen extends ConsumerStatefulWidget {
  const KyctwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  KyctwoScreenState createState() => KyctwoScreenState();
}

class KyctwoScreenState extends ConsumerState<KyctwoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 7.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  "lbl_verify_account".tr,
                  style: TextStyle(
                    color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                    fontSize: 20.fSize,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 38.v),
              Padding(
                padding: EdgeInsets.only(left: 11.h),
                child: Text(
                  "msg_take_selfie_photo".tr,
                  style: TextStyle(
                    color: appTheme.gray500,
                    fontSize: 14.329999923706055.fSize,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 38.v),
              _buildProfileCard(context),
              SizedBox(height: 40.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 14.h,
                  right: 74.h,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgIconCheckRedA200,
                      height: 19.adaptSize,
                      width: 19.adaptSize,
                      margin: EdgeInsets.only(bottom: 18.v),
                    ),
                    Expanded(
                      child: Container(
                        width: 226.h,
                        margin: EdgeInsets.only(left: 7.h),
                        child: Text(
                          "msg_take_a_selfie_of".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: theme.colorScheme.onPrimaryContainer
                                .withOpacity(1),
                            fontSize: 11.8292236328125.fSize,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 14.h,
                  right: 28.h,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgIconCheckRedA200,
                      height: 19.adaptSize,
                      width: 19.adaptSize,
                      margin: EdgeInsets.only(bottom: 18.v),
                    ),
                    Expanded(
                      child: Container(
                        width: 272.h,
                        margin: EdgeInsets.only(left: 7.h),
                        child: Text(
                          "msg_make_sure_your_whole".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: theme.colorScheme.onPrimaryContainer
                                .withOpacity(1),
                            fontSize: 11.8292236328125.fSize,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 9.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 14.h,
                  right: 32.h,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgIconUnsuitable,
                      height: 19.adaptSize,
                      width: 19.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 7.h),
                      child: Text(
                        "msg_do_not_crop_your".tr,
                        style: TextStyle(
                          color: theme.colorScheme.onPrimaryContainer
                              .withOpacity(1),
                          fontSize: 11.8292236328125.fSize,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 9.v),
              _buildItem(context),
              Spacer(),
              _buildIconCheck(context),
              SizedBox(height: 17.v),
              CustomElevatedButton(
                height: 55.v,
                text: "lbl_continue".tr,
                margin: EdgeInsets.symmetric(horizontal: 13.h),
                buttonStyle: CustomButtonStyles.none,
                decoration:
                    CustomButtonStyles.gradientPrimaryToRedATL11Decoration,
                alignment: Alignment.center,
              ),
              SizedBox(height: 96.v),
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
  Widget _buildProfileCard(BuildContext context) {
    return OutlineGradientButton(
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
          horizontal: 107.h,
          vertical: 21.v,
        ),
        decoration: AppDecoration
            .gradientOnPrimaryContainerToOnPrimaryContainer5
            .copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgCamera1,
              height: 30.adaptSize,
              width: 30.adaptSize,
            ),
            SizedBox(height: 8.v),
            Text(
              "msg_upload_portrait".tr,
              style: TextStyle(
                color: appTheme.gray300,
                fontSize: 11.8292236328125.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 9.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildItem(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgIconUnsuitable,
              height: 19.adaptSize,
              width: 19.adaptSize,
              margin: EdgeInsets.only(
                top: 1.v,
                bottom: 18.v,
              ),
            ),
            Expanded(
              child: Container(
                width: 286.h,
                margin: EdgeInsets.only(left: 7.h),
                child: Text(
                  "msg_do_not_hide_or_alter".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                    fontSize: 11.8292236328125.fSize,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildIconCheck(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 13.h),
        child: Consumer(
          builder: (context, ref, _) {
            return CustomCheckboxButton(
              alignment: Alignment.center,
              text: "msg_this_information".tr,
              isExpandedText: true,
              value: ref.watch(kyctwoNotifier).iconCheck,
              textStyle: TextStyle(
                color: appTheme.gray50002,
                fontSize: 10.123527526855469.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
              onChange: (value) {
                ref.read(kyctwoNotifier.notifier).changeCheckBox1(value);
              },
            );
          },
        ),
      ),
    );
  }
}
