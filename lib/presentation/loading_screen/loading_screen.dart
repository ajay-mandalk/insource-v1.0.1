import 'notifier/loading_notifier.dart';
import 'package:flutter/material.dart';
import 'package:insource/core/app_export.dart';
import 'package:insource/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:insource/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:insource/widgets/app_bar/custom_app_bar.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class LoadingScreen extends ConsumerStatefulWidget {
  const LoadingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LoadingScreenState createState() => LoadingScreenState();
}

class LoadingScreenState extends ConsumerState<LoadingScreen> {
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
                flex: 48,
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
                    width: 289.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 85.h,
                      vertical: 46.v,
                    ),
                    decoration: AppDecoration
                        .gradientOnPrimaryContainerToOnPrimaryContainer9
                        .copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 6.v),
                        SizedBox(
                          height: 130.v,
                          width: 105.h,
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgVector,
                                height: 91.v,
                                width: 105.h,
                                alignment: Alignment.topCenter,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgVector93x61,
                                height: 93.v,
                                width: 61.h,
                                alignment: Alignment.bottomLeft,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 11.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "lbl_loading".tr,
                            style: TextStyle(
                              color: theme.colorScheme.onPrimaryContainer
                                  .withOpacity(1),
                              fontSize: 21.685335159301758.fSize,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Spacer(
                flex: 51,
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
