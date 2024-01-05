import 'notifier/comming_soon_notifier.dart';
import 'package:flutter/material.dart';
import 'package:insource/core/app_export.dart';
import 'package:insource/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:insource/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:insource/widgets/app_bar/custom_app_bar.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class CommingSoonScreen extends ConsumerStatefulWidget {
  const CommingSoonScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CommingSoonScreenState createState() => CommingSoonScreenState();
}

class CommingSoonScreenState extends ConsumerState<CommingSoonScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          height: 667.v,
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 15.h,
            top: 190.v,
            right: 15.h,
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
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
                    height: 273.v,
                    width: 289.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10.h,
                      ),
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
                    ),
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgImage10,
                height: 240.v,
                width: 360.h,
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 17.v),
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
