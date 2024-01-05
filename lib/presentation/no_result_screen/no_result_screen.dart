import 'notifier/no_result_notifier.dart';
import 'package:flutter/material.dart';
import 'package:insource/core/app_export.dart';
import 'package:insource/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:insource/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:insource/widgets/app_bar/custom_app_bar.dart';

class NoResultScreen extends ConsumerStatefulWidget {
  const NoResultScreen({Key? key})
      : super(
          key: key,
        );

  @override
  NoResultScreenState createState() => NoResultScreenState();
}

class NoResultScreenState extends ConsumerState<NoResultScreen> {
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
                flex: 38,
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1.h,
                  ),
                  borderRadius: BorderRadiusStyle.roundedBorder10,
                ),
                child: Container(
                  height: 273.v,
                  width: 289.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 26.h,
                    vertical: 19.v,
                  ),
                  decoration: AppDecoration
                      .gradientOnPrimaryContainerToOnPrimaryContainer9
                      .copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImageRemovebgPreview233x233,
                        height: 233.adaptSize,
                        width: 233.adaptSize,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 13.v),
                          child: Text(
                            "msg_no_results_found".tr,
                            style: TextStyle(
                              color: theme.colorScheme.onPrimaryContainer
                                  .withOpacity(1),
                              fontSize: 17.1341552734375.fSize,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(
                flex: 61,
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
