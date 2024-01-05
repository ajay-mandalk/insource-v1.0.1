import 'notifier/signup_notifier.dart';
import 'package:flutter/material.dart';
import 'package:insource/core/app_export.dart';
import 'package:insource/core/utils/validation_functions.dart';
import 'package:insource/widgets/custom_elevated_button.dart';
import 'package:insource/widgets/custom_text_form_field.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class SignupScreen extends ConsumerStatefulWidget {
  const SignupScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SignupScreenState createState() => SignupScreenState();
}

class SignupScreenState extends ConsumerState<SignupScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgChartGraphisRedA400,
                      height: 741.v,
                      width: 390.h,
                      alignment: Alignment.topCenter,
                    ),
                    _buildSignupScreen(context),
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
  Widget _buildSignupScreen(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.only(
          left: 38.h,
          top: 92.v,
          right: 38.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "lbl_just_step_away".tr,
              style: TextStyle(
                color: appTheme.gray200,
                fontSize: 32.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "msg_claim_your_bonus".tr,
              style: TextStyle(
                color: appTheme.gray500,
                fontSize: 14.329999923706055.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 22.v),
            Text(
              "msg_already_a_plade".tr,
              style: TextStyle(
                color: appTheme.yellow600,
                fontSize: 12.fSize,
                fontFamily: 'Outfit',
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 20.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 17.h),
                child: Text(
                  "lbl_invite_code".tr,
                  style: TextStyle(
                    color: appTheme.gray500,
                    fontSize: 14.329999923706055.fSize,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(height: 1.v),
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
                  return CustomTextFormField(
                    controller: ref.watch(signupNotifier).mdiinviteController,
                    hintText: "msg_enter_invite_code".tr,
                    prefix: Container(
                      margin: EdgeInsets.fromLTRB(16.h, 10.v, 16.h, 11.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgMdiinvite,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: 45.v,
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 2.v),
            SizedBox(
              height: 65.v,
              width: 314.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 17.h),
                      child: Text(
                        "lbl_your_name".tr,
                        style: TextStyle(
                          color: appTheme.gray500,
                          fontSize: 14.329999923706055.fSize,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
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
                        return CustomTextFormField(
                          width: 314.h,
                          controller:
                              ref.watch(signupNotifier).userNameController,
                          hintText: "lbl_enter_username".tr,
                          alignment: Alignment.bottomCenter,
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
                          validator: (value) {
                            if (!isText(value)) {
                              return "err_msg_please_enter_valid_text".tr;
                            }
                            return null;
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.v),
            SizedBox(
              height: 66.v,
              width: 314.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 17.h),
                      child: Text(
                        "lbl_mobile".tr,
                        style: TextStyle(
                          color: appTheme.gray500,
                          fontSize: 14.329999923706055.fSize,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
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
                        return CustomTextFormField(
                          width: 314.h,
                          controller:
                              ref.watch(signupNotifier).phoneNumberController,
                          hintText: "lbl_phone_number".tr,
                          textInputType: TextInputType.phone,
                          alignment: Alignment.bottomCenter,
                          prefix: Container(
                            margin: EdgeInsets.fromLTRB(17.h, 10.v, 14.h, 11.v),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgMobile,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            ),
                          ),
                          prefixConstraints: BoxConstraints(
                            maxHeight: 45.v,
                          ),
                          validator: (value) {
                            if (!isValidPhone(value)) {
                              return "err_msg_please_enter_valid_phone_number"
                                  .tr;
                            }
                            return null;
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 11.v),
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
                  return CustomTextFormField(
                    controller:
                        ref.watch(signupNotifier).enterOTPLabelController,
                    hintText: "msg_enter_4_digit_otp".tr,
                    textInputAction: TextInputAction.done,
                    prefix: Container(
                      margin: EdgeInsets.fromLTRB(17.h, 9.v, 16.h, 12.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgMdipasswordoutline,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: 45.v,
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 3.v),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 21.h,
                  right: 3.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "lbl_0_45s".tr,
                      style: TextStyle(
                        color: appTheme.gray500,
                        fontSize: 12.fSize,
                        fontFamily: 'Outfit',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "lbl_resend_code".tr,
                      style: TextStyle(
                        color: appTheme.gray500,
                        fontSize: 12.fSize,
                        fontFamily: 'Outfit',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 11.v),
            CustomElevatedButton(
              height: 50.v,
              text: "lbl_sign_up".tr,
              buttonStyle: CustomButtonStyles.none,
              decoration:
                  CustomButtonStyles.gradientPrimaryToOnPrimaryDecoration,
            ),
            SizedBox(height: 6.v),
            Text(
              "lbl_or_sign_up_with".tr,
              style: TextStyle(
                color: appTheme.gray400,
                fontSize: 11.25.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 7.v),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 68.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGoogleBtn,
                    height: 19.adaptSize,
                    width: 19.adaptSize,
                  ),
                  Spacer(
                    flex: 49,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgAppleBtn,
                    height: 19.v,
                    width: 16.h,
                  ),
                  Spacer(
                    flex: 50,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgFbBtn,
                    height: 19.adaptSize,
                    width: 19.adaptSize,
                  ),
                ],
              ),
            ),
            SizedBox(height: 7.v),
          ],
        ),
      ),
    );
  }
}
