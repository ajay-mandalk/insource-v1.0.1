import 'notifier/no_internet_notifier.dart';
import 'package:flutter/material.dart';
import 'package:insource/core/app_export.dart';
import 'package:insource/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:insource/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:insource/widgets/app_bar/custom_app_bar.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class NoInternetScreen extends ConsumerStatefulWidget {
  const NoInternetScreen({Key? key})
      : super(
          key: key,
        );

  @override
  NoInternetScreenState createState() => NoInternetScreenState();
}

class NoInternetScreenState extends ConsumerState<NoInternetScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 20.v),
          child: Column(
            children: [
              Spacer(
                flex: 44,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.h),
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
                      appTheme.black9007f.withOpacity(0.03),
                    ],
                  ),
                  corners: Corners(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 26.h,
                      vertical: 39.v,
                    ),
                    decoration: AppDecoration
                        .gradientOnPrimaryContainerToOnPrimaryContainer9
                        .copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath:
                              ImageConstant.imgImageRemovebgPreview139x198,
                          height: 139.v,
                          width: 198.h,
                        ),
                        SizedBox(height: 13.v),
                        Text(
                          "msg_check_your_internet".tr,
                          style: TextStyle(
                            color: theme.colorScheme.onPrimaryContainer
                                .withOpacity(1),
                            fontSize: 16.792009353637695.fSize,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 16.v),
                      ],
                    ),
                  ),
                ),
              ),
              Spacer(
                flex: 55,
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
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
  Widget _buildBottomBar(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          16.h,
        ),
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            theme.colorScheme.onPrimaryContainer.withOpacity(0.15),
            theme.colorScheme.onPrimaryContainer.withOpacity(0.02),
          ],
        ),
      ),
      child: CustomImageView(
        imagePath: ImageConstant.imgNavitem,
        height: 72.v,
        width: 301.h,
        margin: EdgeInsets.only(
          left: 20.h,
          right: 21.h,
        ),
      ),
    );
  }
}
