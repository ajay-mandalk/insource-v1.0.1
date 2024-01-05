import 'notifier/onboarding_notifier.dart';
import 'package:flutter/material.dart';
import 'package:insource/core/app_export.dart';
import 'package:insource/widgets/custom_icon_button.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  OnboardingScreenState createState() => OnboardingScreenState();
}

class OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: SizeUtils.height,
          width: double.maxFinite,
          child: Stack(
            children: [
              SizedBox(
                height: SizeUtils.height,
                child: PageView(
                  controller: pageController,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      height: SizeUtils.height,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: appTheme.gray900,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 23.h),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      ImageConstant.imgGroup11,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Spacer(),
                    _buildTradingFantasy(context),
                    Container(
                      width: 306.h,
                      margin: EdgeInsets.only(right: 36.h),
                      child: Text(
                        "msg_play_quick_fantasy".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: theme.colorScheme.onPrimaryContainer
                              .withOpacity(0.6),
                          fontSize: 16.fSize,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 27.v),
                    SmoothPageIndicator(
                      controller: pageController,
                      count: 2,
                      axisDirection: Axis.horizontal,
                      effect: ScrollingDotsEffect(
                        spacing: 8,
                        activeDotColor:
                            theme.colorScheme.onPrimaryContainer.withOpacity(1),
                        dotColor: theme.colorScheme.onPrimaryContainer
                            .withOpacity(0.25),
                        dotHeight: 6.v,
                        dotWidth: 6.h,
                      ),
                      onDotClicked: (value) {
                        pageController.jumpToPage(value);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBtn(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildTradingFantasy(BuildContext context) {
    return Container(
      height: 104.v,
      width: 321.h,
      margin: EdgeInsets.only(right: 21.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVector183,
            height: 16.v,
            width: 108.h,
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.only(
              right: 13.h,
              bottom: 37.v,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 321.h,
              child: Text(
                "msg_trading_fantasy".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                  fontSize: 40.fSize,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBtn(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 32.h,
        right: 40.h,
        bottom: 38.v,
      ),
      decoration:
          AppDecoration.gradientOnPrimaryContainerToOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: OutlineGradientButton(
        padding: EdgeInsets.only(
          left: 1.h,
          top: 1.v,
          right: 1.h,
          bottom: 1.v,
        ),
        strokeWidth: 1.h,
        gradient: LinearGradient(
          begin: Alignment(0.97, 1),
          end: Alignment(0, 0),
          colors: [
            theme.colorScheme.onPrimaryContainer.withOpacity(0.2),
            theme.colorScheme.onPrimaryContainer.withOpacity(0.1),
            theme.colorScheme.onPrimaryContainer.withOpacity(0.05),
          ],
        ),
        corners: Corners(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomIconButton(
              height: 56.adaptSize,
              width: 56.adaptSize,
              padding: EdgeInsets.all(16.h),
              decoration: IconButtonStyleHelper.fillOnPrimaryContainer,
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowLeft,
              ),
            ),
            Spacer(
              flex: 2,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 17.v,
                bottom: 16.v,
              ),
              child: Text(
                "lbl_let_s_plade".tr,
                style: TextStyle(
                  color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                  fontSize: 16.fSize,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Spacer(
              flex: 1,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgArrows,
              height: 20.v,
              width: 60.h,
              margin: EdgeInsets.symmetric(vertical: 18.v),
            ),
          ],
        ),
      ),
    );
  }
}
