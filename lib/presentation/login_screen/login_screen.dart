import 'notifier/login_notifier.dart';
import 'package:flutter/material.dart';
import 'package:insource/core/app_export.dart';
import 'package:insource/core/utils/validation_functions.dart';
import 'package:insource/widgets/custom_elevated_button.dart';
import 'package:insource/widgets/custom_text_form_field.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends ConsumerState<LoginScreen> {
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
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 47.v),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 38.h,
                        vertical: 13.v,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgGroup8,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 99.v),
                          Text(
                            "lbl_welcome_back".tr,
                            style: TextStyle(
                              color: appTheme.gray200,
                              fontSize: 32.fSize,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 2.v),
                          Text(
                            "lbl_we_missed_you".tr,
                            style: TextStyle(
                              color: appTheme.gray500,
                              fontSize: 14.329999923706055.fSize,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 78.v),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "msg_not_a_plade_member2".tr,
                                  style: CustomTextStyles.labelLargeOutfit,
                                ),
                                TextSpan(
                                  text: " ",
                                ),
                                TextSpan(
                                  text: "lbl_create_account".tr,
                                  style: CustomTextStyles
                                      .labelLargeOutfitYellow600Bold,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(height: 11.v),
                          _buildPhoneNumberSection(context),
                          SizedBox(height: 21.v),
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
                                theme.colorScheme.onPrimaryContainer
                                    .withOpacity(0.15),
                                theme.colorScheme.onPrimaryContainer
                                    .withOpacity(0.03),
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
                                  controller: ref
                                      .watch(loginNotifier)
                                      .enterOTPLabelController,
                                  hintText: "msg_enter_4_digit_otp".tr,
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.visiblePassword,
                                  prefix: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        20.h, 10.v, 16.h, 10.v),
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgSettings,
                                      height: 18.adaptSize,
                                      width: 18.adaptSize,
                                    ),
                                  ),
                                  prefixConstraints: BoxConstraints(
                                    maxHeight: 45.v,
                                  ),
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "err_msg_please_enter_valid_password"
                                          .tr;
                                    }
                                    return null;
                                  },
                                  obscureText: true,
                                );
                              },
                            ),
                          ),
                          SizedBox(height: 3.v),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(right: 7.h),
                              child: Text(
                                "lbl_resend_code".tr,
                                style: TextStyle(
                                  color: appTheme.gray500,
                                  fontSize: 12.fSize,
                                  fontFamily: 'Outfit',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 3.v),
                          CustomElevatedButton(
                            height: 50.v,
                            text: "lbl_verify".tr,
                            buttonStyle: CustomButtonStyles.none,
                            decoration: CustomButtonStyles
                                .gradientPrimaryToOnPrimaryDecoration,
                          ),
                          SizedBox(height: 21.v),
                          Text(
                            "lbl_or_login_with".tr,
                            style: TextStyle(
                              color: appTheme.gray400,
                              fontSize: 11.25.fSize,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 106.h),
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
                    SizedBox(height: 5.v),
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
  Widget _buildPhoneNumberSection(BuildContext context) {
    return SizedBox(
      height: 66.v,
      width: 314.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
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
                  controller: ref.watch(loginNotifier).phoneNumberController,
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
                      return "err_msg_please_enter_valid_phone_number".tr;
                    }
                    return null;
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
