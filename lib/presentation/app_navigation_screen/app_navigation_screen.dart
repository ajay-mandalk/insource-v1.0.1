// ingore unsed import


import 'notifier/app_navigation_notifier.dart';
import 'package:flutter/material.dart';
import 'package:insource/core/app_export.dart';

class AppNavigationScreen extends ConsumerStatefulWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AppNavigationScreenState createState() => AppNavigationScreenState();
}

class AppNavigationScreenState extends ConsumerState<AppNavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "flash screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.flashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "login".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "signup screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signupScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "home".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "room".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.roomScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "connecting".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.connectingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "coin selection".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.coinSelectionScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Gaming screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.gamingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "leaderboard".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.leaderboardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "contest detail".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.contestDetailScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "coin selection One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.coinSelectionOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "contest room".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.contestRoomScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Gaming screen One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.gamingScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "winner screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.winnerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Your match Three - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.yourMatchThreeTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Market".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.marketScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "setting".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.settingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "edit profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "kyc ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.kycScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "kycTwo".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.kyctwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "invite to earn".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.inviteToEarnScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "share invite".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.shareInviteScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "no result".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.noResultScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "no internet".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.noInternetScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "went wrong".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.wentWrongScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "comming soon".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.commingSoonScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "loading".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loadingScreen),
                        ),
                      ],
                    ),
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
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
