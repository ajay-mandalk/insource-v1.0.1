import '../home_screen/widgets/carosol_item_widget.dart';
import '../home_screen/widgets/contestcard_item_widget.dart';
import '../home_screen/widgets/multiplayer_item_widget.dart';
import 'models/carosol_item_model.dart';
import 'models/contestcard_item_model.dart';
import 'models/multiplayer_item_model.dart';
import 'notifier/home_notifier.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:insource/core/app_export.dart';
import 'package:insource/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:insource/widgets/app_bar/appbar_title.dart';
import 'package:insource/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:insource/widgets/app_bar/custom_app_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child: Column(
            children: [
              SizedBox(height: 13.v),
              _buildCarousel(context),
              SizedBox(height: 19.v),
              _buildQuickMatch(context),
              SizedBox(height: 16.v),
              _buildTitle(context),
              SizedBox(height: 19.v),
              _buildContestCard(context),
              SizedBox(height: 20.v), // Add some additional space at the bottom
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
        imagePath: ImageConstant.imgLockOnprimarycontainer,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 4.v,
          bottom: 4.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_hi_guest".tr,
        margin: EdgeInsets.only(left: 18.h),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgIconLinearBell,
          margin: EdgeInsets.symmetric(
            horizontal: 27.h,
            vertical: 4.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCarousel(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.h),
      child: Column(
        children: [
          Consumer(
            builder: (context, ref, _) {
              return CarouselSlider.builder(
                options: CarouselOptions(
                  height: 121.v,
                  initialPage: 0,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (
                    index,
                    reason,
                  ) {
                    ref.watch(homeNotifier).sliderIndex = index;
                  },
                ),
                itemCount: ref
                        .watch(homeNotifier)
                        .homeModelObj
                        ?.carosolItemList
                        .length ??
                    0,
                itemBuilder: (context, index, realIndex) {
                  CarosolItemModel model = ref
                          .watch(homeNotifier)
                          .homeModelObj
                          ?.carosolItemList[index] ??
                      CarosolItemModel();
                  return CarosolItemWidget(
                    model,
                  );
                },
              );
            },
          ),
          SizedBox(height: 20.v),
          Consumer(
            builder: (context, ref, _) {
              return SizedBox(
                height: 6.v,
                child: AnimatedSmoothIndicator(
                  activeIndex: ref.watch(homeNotifier).sliderIndex,
                  count: ref
                          .watch(homeNotifier)
                          .homeModelObj
                          ?.carosolItemList
                          .length ??
                      0,
                  axisDirection: Axis.horizontal,
                  effect: ScrollingDotsEffect(
                    spacing: 4,
                    activeDotColor: appTheme.gray50003,
                    dotColor:
                        theme.colorScheme.onPrimaryContainer.withOpacity(1),
                    dotHeight: 6.v,
                    dotWidth: 6.h,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildQuickMatch(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_quick_match".tr,
            style: TextStyle(
              color: appTheme.blueGray10001,
              fontSize: 14.fSize,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 20.v),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 83.v,
              child: Consumer(
                builder: (context, ref, _) {
                  return ListView.separated(
                    padding: EdgeInsets.only(
                      left: 18.h,
                      right: 20.h,
                    ),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return SizedBox(
                        width: 40.h,
                      );
                    },
                    itemCount: ref
                            .watch(homeNotifier)
                            .homeModelObj
                            ?.multiplayerItemList
                            .length ??
                        0,
                    itemBuilder: (context, index) {
                      MultiplayerItemModel model = ref
                              .watch(homeNotifier)
                              .homeModelObj
                              ?.multiplayerItemList[index] ??
                          MultiplayerItemModel();
                      return MultiplayerItemWidget(
                        model,
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTitle(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_plade_contest".tr,
            style: TextStyle(
              color: appTheme.blueGray10001,
              fontSize: 14.fSize,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w400,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgUser,
            height: 13.v,
            width: 12.h,
            margin: EdgeInsets.only(
              top: 3.v,
              bottom: 2.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContestCard(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 20.v,
            );
          },
          itemCount: ref
                  .watch(homeNotifier)
                  .homeModelObj
                  ?.contestcardItemList
                  .length ??
              0,
          itemBuilder: (context, index) {
            ContestcardItemModel model = ref
                    .watch(homeNotifier)
                    .homeModelObj
                    ?.contestcardItemList[index] ??
                ContestcardItemModel();
            return ContestcardItemWidget(
              model,
            );
          },
        );
      },
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
