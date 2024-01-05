import 'notifier/edit_profile_notifier.dart';
import 'package:flutter/material.dart';
import 'package:insource/core/app_export.dart';
import 'package:insource/core/utils/validation_functions.dart';
import 'package:insource/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:insource/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:insource/widgets/app_bar/custom_app_bar.dart';
import 'package:insource/widgets/custom_text_form_field.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class EditProfileScreen extends ConsumerStatefulWidget {
  const EditProfileScreen({Key? key})
      : super(
          key: key,
        );

  @override
  EditProfileScreenState createState() => EditProfileScreenState();
}

class EditProfileScreenState extends ConsumerState<EditProfileScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: SizedBox(
                height: SizeUtils.height,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgChartGraphisRedA400421x390,
                      height: 421.v,
                      width: 390.h,
                      alignment: Alignment.topCenter,
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 38.h,
                          top: 82.v,
                          right: 38.h,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: 81.v,
                              width: 80.h,
                              child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgEllipse110,
                                    height: 80.adaptSize,
                                    width: 80.adaptSize,
                                    radius: BorderRadius.circular(
                                      40.h,
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgPhoto,
                                    height: 27.adaptSize,
                                    width: 27.adaptSize,
                                    alignment: Alignment.bottomRight,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 19.v),
                            Text(
                              "lbl_profile_details".tr,
                              style: TextStyle(
                                color: theme.colorScheme.onPrimaryContainer
                                    .withOpacity(1),
                                fontSize: 20.fSize,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 18.v),
                            _buildLockSection(context),
                            SizedBox(height: 20.v),
                            _buildUsernameSection(context),
                            SizedBox(height: 20.v),
                            _buildUserNameSection(context),
                            SizedBox(height: 20.v),
                            _buildMobileNoSection(context),
                            SizedBox(height: 20.v),
                            CustomImageView(
                              imagePath: ImageConstant.imgCheck,
                              height: 32.adaptSize,
                              width: 32.adaptSize,
                            ),
                            SizedBox(height: 20.v),
                            _buildPasswordSection(context),
                            SizedBox(height: 20.v),
                            _buildPasswordSection1(context),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
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
      height: 72.v,
      leadingWidth: 72.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(left: 24.h),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgIconLinearBell,
          margin: EdgeInsets.symmetric(horizontal: 24.h),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildLockSection(BuildContext context) {
    return OutlineGradientButton(
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
        topLeft: Radius.circular(8),
        topRight: Radius.circular(8),
        bottomLeft: Radius.circular(8),
        bottomRight: Radius.circular(8),
      ),
      child: Consumer(
        builder: (context, ref, _) {
          return CustomTextFormField(
            controller: ref.watch(editProfileNotifier).lockSectionController,
            hintText: "lbl_gopi_singhania".tr,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(22.h, 13.v, 15.h, 13.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgLock,
                height: 16.v,
                width: 17.h,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 45.v,
            ),
            suffix: Container(
              margin: EdgeInsets.fromLTRB(30.h, 17.v, 19.h, 16.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgUserGray50012x12,
                height: 12.adaptSize,
                width: 12.adaptSize,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 45.v,
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 11.v),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildUsernameSection(BuildContext context) {
    return OutlineGradientButton(
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
        topLeft: Radius.circular(8),
        topRight: Radius.circular(8),
        bottomLeft: Radius.circular(8),
        bottomRight: Radius.circular(8),
      ),
      child: Consumer(
        builder: (context, ref, _) {
          return CustomTextFormField(
            controller:
                ref.watch(editProfileNotifier).usernameSectionController,
            hintText: "lbl_i_am_gopi".tr,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(22.h, 13.v, 15.h, 13.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgLock,
                height: 16.v,
                width: 17.h,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 45.v,
            ),
            suffix: Container(
              margin: EdgeInsets.fromLTRB(30.h, 17.v, 19.h, 16.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgUserGray50012x12,
                height: 12.adaptSize,
                width: 12.adaptSize,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 45.v,
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 11.v),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildUserNameSection(BuildContext context) {
    return OutlineGradientButton(
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
        topLeft: Radius.circular(8),
        topRight: Radius.circular(8),
        bottomLeft: Radius.circular(8),
        bottomRight: Radius.circular(8),
      ),
      child: Consumer(
        builder: (context, ref, _) {
          return CustomTextFormField(
            controller:
                ref.watch(editProfileNotifier).userNameSectionController,
            hintText: "lbl_username_1234".tr,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(21.h, 14.v, 17.h, 14.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgLockGray500,
                height: 15.v,
                width: 18.h,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 45.v,
            ),
            suffix: Container(
              margin: EdgeInsets.fromLTRB(30.h, 17.v, 19.h, 16.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgUserGray50012x12,
                height: 12.adaptSize,
                width: 12.adaptSize,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 45.v,
            ),
            validator: (value) {
              if (!isText(value)) {
                return "err_msg_please_enter_valid_text".tr;
              }
              return null;
            },
            contentPadding: EdgeInsets.symmetric(vertical: 11.v),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildMobileNoSection(BuildContext context) {
    return OutlineGradientButton(
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
        topLeft: Radius.circular(8),
        topRight: Radius.circular(8),
        bottomLeft: Radius.circular(8),
        bottomRight: Radius.circular(8),
      ),
      child: Consumer(
        builder: (context, ref, _) {
          return CustomTextFormField(
            controller:
                ref.watch(editProfileNotifier).mobileNoSectionController,
            hintText: "lbl_91_6663336666".tr,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(19.h, 10.v, 13.h, 11.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgMobile,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 45.v,
            ),
            suffix: Container(
              margin: EdgeInsets.fromLTRB(30.h, 17.v, 19.h, 16.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgUserGray50012x12,
                height: 12.adaptSize,
                width: 12.adaptSize,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 45.v,
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 11.v),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordSection(BuildContext context) {
    return OutlineGradientButton(
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
        topLeft: Radius.circular(8),
        topRight: Radius.circular(8),
        bottomLeft: Radius.circular(8),
        bottomRight: Radius.circular(8),
      ),
      child: Consumer(
        builder: (context, ref, _) {
          return CustomTextFormField(
            controller:
                ref.watch(editProfileNotifier).passwordSectionController,
            hintText: "lbl_xxxxxxxxx5432".tr,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(21.h, 15.v, 15.h, 15.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgUserGray50014x19,
                height: 14.v,
                width: 19.h,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 45.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordSection1(BuildContext context) {
    return OutlineGradientButton(
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
        topLeft: Radius.circular(8),
        topRight: Radius.circular(8),
        bottomLeft: Radius.circular(8),
        bottomRight: Radius.circular(8),
      ),
      child: Consumer(
        builder: (context, ref, _) {
          return CustomTextFormField(
            controller:
                ref.watch(editProfileNotifier).passwordSectionController1,
            hintText: "lbl_xxxxxxxxx4621".tr,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            suffix: InkWell(
              onTap: () {
                ref
                    .read(editProfileNotifier.notifier)
                    .changePasswordVisibility();
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(30.h, 17.v, 19.h, 16.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgUserGray500,
                  height: 12.adaptSize,
                  width: 12.adaptSize,
                ),
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 45.v,
            ),
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: ref.watch(editProfileNotifier).isShowPassword,
            contentPadding: EdgeInsets.symmetric(vertical: 11.v),
          );
        },
      ),
    );
  }
}
