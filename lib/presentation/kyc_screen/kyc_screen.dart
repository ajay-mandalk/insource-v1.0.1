import 'models/kyc_model.dart';
import 'notifier/kyc_notifier.dart';
import 'package:flutter/material.dart';
import 'package:insource/core/app_export.dart';
import 'package:insource/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:insource/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:insource/widgets/app_bar/custom_app_bar.dart';
import 'package:insource/widgets/custom_checkbox_button.dart';
import 'package:insource/widgets/custom_drop_down.dart';
import 'package:insource/widgets/custom_elevated_button.dart';
import 'package:insource/widgets/custom_text_form_field.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class KycScreen extends ConsumerStatefulWidget {
  const KycScreen({Key? key})
      : super(
          key: key,
        );

  @override
  KycScreenState createState() => KycScreenState();
}

class KycScreenState extends ConsumerState<KycScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          height: SizeUtils.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgChartGraphisRedA400421x390,
                height: 421.v,
                width: 390.h,
                alignment: Alignment.topCenter,
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(37.h, 83.v, 37.h, 5.v),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "lbl_verify_account".tr,
                        style: TextStyle(
                          color: theme.colorScheme.onPrimaryContainer
                              .withOpacity(1),
                          fontSize: 20.fSize,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 18.v),
                      _buildEightyOne(context),
                      SizedBox(height: 20.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text(
                            "msg_select_a_valid_government".tr,
                            style: TextStyle(
                              color: appTheme.gray500,
                              fontSize: 14.329999923706055.fSize,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.v),
                      _buildIdentityCard(context),
                      SizedBox(height: 20.v),
                      _buildPassportValue(context),
                      SizedBox(height: 20.v),
                      _buildDrivingLicense(context),
                      Spacer(),
                      _buildIconCheck(context),
                      SizedBox(height: 17.v),
                      _buildContinue(context),
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
  Widget _buildEightyOne(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 3.h),
          child: Text(
            "msg_select_country_of".tr,
            style: TextStyle(
              color: appTheme.gray500,
              fontSize: 14.329999923706055.fSize,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(height: 18.v),
        OutlineGradientButton(
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
              return CustomDropDown(
                icon: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 14.v, 24.h, 7.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgIconArrow,
                    height: 23.adaptSize,
                    width: 23.adaptSize,
                  ),
                ),
                hintText: "lbl_select_country".tr,
                items:
                    ref.watch(kycNotifier).kycModelObj?.dropdownItemList ?? [],
                onChanged: (value) {
                  ref.watch(kycNotifier).selectedDropDownValue = value;
                },
              );
            },
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildIdentityCard(BuildContext context) {
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
            controller: ref.watch(kycNotifier).identityCardController,
            hintText: "lbl_identity_card".tr,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(21.h, 16.v, 18.h, 16.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgUserGray50011x15,
                height: 11.v,
                width: 15.h,
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
  Widget _buildPassportValue(BuildContext context) {
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
            controller: ref.watch(kycNotifier).passportValueController,
            hintText: "lbl_passport".tr,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(21.h, 15.v, 19.h, 15.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgUserGray50011x15,
                height: 11.v,
                width: 15.h,
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
  Widget _buildDrivingLicense(BuildContext context) {
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
            controller: ref.watch(kycNotifier).drivingLicenseController,
            hintText: "lbl_driving_license".tr,
            textInputAction: TextInputAction.done,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(19.h, 16.v, 21.h, 16.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgUserGray50011x15,
                height: 11.v,
                width: 15.h,
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
  Widget _buildIconCheck(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomCheckboxButton(
          text: "msg_this_information".tr,
          isExpandedText: true,
          value: ref.watch(kycNotifier).iconCheck,
          textStyle: TextStyle(
            color: appTheme.gray50002,
            fontSize: 10.123527526855469.fSize,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
          onChange: (value) {
            ref.read(kycNotifier.notifier).changeCheckBox1(value);
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildContinue(BuildContext context) {
    return CustomElevatedButton(
      height: 55.v,
      text: "lbl_continue".tr,
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientPrimaryToRedATL11Decoration,
    );
  }
}
