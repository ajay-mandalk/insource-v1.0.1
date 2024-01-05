import 'notifier/your_match_three_tab_container_notifier.dart';
import 'package:flutter/material.dart';
import 'package:insource/core/app_export.dart';
import 'package:insource/presentation/your_match_three_page/your_match_three_page.dart';
import 'package:insource/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:insource/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:insource/widgets/app_bar/custom_app_bar.dart';

class YourMatchThreeTabContainerScreen extends ConsumerStatefulWidget {
  const YourMatchThreeTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  YourMatchThreeTabContainerScreenState createState() =>
      YourMatchThreeTabContainerScreenState();
}

class YourMatchThreeTabContainerScreenState
    extends ConsumerState<YourMatchThreeTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          height: 666.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgChartGraphisRedA400397x390,
                height: 397.v,
                width: 390.h,
                alignment: Alignment.bottomCenter,
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: Text(
                          "lbl_your_matches".tr,
                          style: TextStyle(
                            color: theme.colorScheme.onPrimaryContainer
                                .withOpacity(1),
                            fontSize: 20.fSize,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.v),
                    Container(
                      height: 35.v,
                      width: 301.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          16.h,
                        ),
                        gradient: LinearGradient(
                          begin: Alignment(0, 0),
                          end: Alignment(1, 1),
                          colors: [
                            theme.colorScheme.onPrimaryContainer
                                .withOpacity(0.15),
                            theme.colorScheme.onPrimaryContainer
                                .withOpacity(0.02),
                          ],
                        ),
                      ),
                      child: TabBar(
                        controller: tabviewController,
                        labelPadding: EdgeInsets.zero,
                        tabs: [
                          Tab(
                            child: Text(
                              "lbl_completed".tr,
                            ),
                          ),
                          Tab(
                            child: Text(
                              "lbl_live2".tr,
                            ),
                          ),
                          Tab(
                            child: Text(
                              "lbl_upcoming".tr,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 579.v,
                      child: TabBarView(
                        controller: tabviewController,
                        children: [
                          YourMatchThreePage(),
                          YourMatchThreePage(),
                          YourMatchThreePage(),
                        ],
                      ),
                    ),
                  ],
                ),
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
        imagePath: ImageConstant.imgNavitemOnprimarycontainer,
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
