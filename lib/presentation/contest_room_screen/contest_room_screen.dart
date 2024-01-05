import 'notifier/contest_room_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:insource/core/app_export.dart';
import 'package:insource/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:insource/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:insource/widgets/app_bar/custom_app_bar.dart';
import 'package:insource/widgets/custom_icon_button.dart';
import 'package:insource/widgets/custom_outlined_button.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class ContestRoomScreen extends ConsumerStatefulWidget {
  const ContestRoomScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ContestRoomScreenState createState() => ContestRoomScreenState();
}

class ContestRoomScreenState extends ConsumerState<ContestRoomScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 16.v,
          ),
          child: Column(
            children: [
              _buildContestCard(context),
              SizedBox(height: 15.v),
              _buildContestDetails(context),
              SizedBox(height: 16.v),
              _buildTitle(context),
              SizedBox(height: 11.v),
              SizedBox(
                width: 195.h,
                child: Text(
                  "msg_you_can_update_your".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: appTheme.blueGray10001,
                    fontSize: 14.fSize,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 9.v),
              _buildMegaphone(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
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
  Widget _buildContestCard(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 5.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgContestCard,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          Container(
            margin: EdgeInsets.only(right: 1.h),
            decoration: AppDecoration.outlineBlackF,
            child: Column(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 1.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 50.v,
                            width: 135.h,
                            margin: EdgeInsets.only(bottom: 6.v),
                            child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgPngtreeGoldTr,
                                  height: 50.v,
                                  width: 52.h,
                                  alignment: Alignment.centerLeft,
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_mega_contest".tr,
                                        style: TextStyle(
                                          color: theme.colorScheme.primary,
                                          fontSize: 12.fSize,
                                          fontFamily: 'Open Sans',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        "lbl_1_5_crore".tr,
                                        style: TextStyle(
                                          color: theme
                                              .colorScheme.onPrimaryContainer
                                              .withOpacity(1),
                                          fontSize: 16.fSize,
                                          fontFamily: 'Open Sans',
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 11.v),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: OutlineGradientButton(
                                    padding: EdgeInsets.only(
                                      left: 1.h,
                                      top: 1.v,
                                      right: 1.h,
                                      bottom: 1.v,
                                    ),
                                    strokeWidth: 1.h,
                                    gradient: LinearGradient(
                                      begin: Alignment(-0.01, 0),
                                      end: Alignment(1.01, 1),
                                      colors: [
                                        theme.colorScheme.onPrimaryContainer
                                            .withOpacity(0.2),
                                        theme.colorScheme.onPrimaryContainer
                                            .withOpacity(0),
                                      ],
                                    ),
                                    corners: Corners(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(5),
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(5),
                                    ),
                                    child: CustomOutlinedButton(
                                      height: 23.v,
                                      width: 64.h,
                                      text: "lbl_27m_54s".tr,
                                      buttonStyle: CustomButtonStyles.none,
                                      decoration: CustomButtonStyles
                                          .gradientRedAToPrimaryDecoration,
                                      alignment: Alignment.centerRight,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5.v),
                                Text(
                                  "msg_entry_fee_free".tr,
                                  style: TextStyle(
                                    color: theme.colorScheme.onPrimaryContainer
                                        .withOpacity(1),
                                    fontSize: 12.fSize,
                                    fontFamily: 'Nunito Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 5.v,
                      width: 317.h,
                      decoration: BoxDecoration(
                        color: appTheme.blueGray10001,
                        borderRadius: BorderRadius.circular(
                          2.h,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          2.h,
                        ),
                        child: LinearProgressIndicator(
                          value: 0.8,
                          backgroundColor: appTheme.blueGray10001,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.v),
                Padding(
                  padding: EdgeInsets.only(right: 4.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: Text(
                          "lbl_50_000_spots".tr,
                          style: TextStyle(
                            color: theme.colorScheme.onPrimaryContainer
                                .withOpacity(1),
                            fontSize: 10.fSize,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Text(
                        "lbl_20_left".tr,
                        style: TextStyle(
                          color: theme.colorScheme.onPrimaryContainer
                              .withOpacity(1),
                          fontSize: 10.fSize,
                          fontFamily: 'Nunito Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 2.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 5.h,
                    right: 4.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgIcon,
                            height: 16.v,
                            width: 14.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 3.h,
                              top: 2.v,
                              bottom: 2.v,
                            ),
                            child: Text(
                              "lbl_20_000_winners".tr,
                              style: TextStyle(
                                color: theme.colorScheme.primary,
                                fontSize: 7.871285915374756.fSize,
                                fontFamily: 'Nunito Sans',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSend,
                        height: 12.adaptSize,
                        width: 12.adaptSize,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContestDetails(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: Text(
            "lbl_contest_details".tr,
            style: TextStyle(
              color: appTheme.yellow700,
              fontSize: 14.73043441772461.fSize,
              fontFamily: 'Nunito Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        SizedBox(height: 13.v),
        SizedBox(
          height: 156.v,
          width: 342.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGraph,
                height: 156.v,
                width: 299.h,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: EdgeInsets.only(
                    top: 2.v,
                    bottom: 1.v,
                  ),
                  decoration: AppDecoration
                      .gradientOnPrimaryContainerToOnPrimaryContainer1
                      .copyWith(
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
                      begin: Alignment(0, 0),
                      end: Alignment(1, 1),
                      colors: [
                        theme.colorScheme.onPrimaryContainer.withOpacity(0.15),
                        theme.colorScheme.onPrimaryContainer.withOpacity(0.03),
                      ],
                    ),
                    corners: Corners(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 3.h,
                        vertical: 1.v,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 14.v,
                              bottom: 6.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "msg_reward_pool_rs".tr,
                                  style: TextStyle(
                                    color: theme.colorScheme.onPrimaryContainer
                                        .withOpacity(1),
                                    fontSize: 12.fSize,
                                    fontFamily: 'Nunito Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 5.v),
                                Text(
                                  "msg_contest_duration".tr,
                                  style: TextStyle(
                                    color: theme.colorScheme.onPrimaryContainer
                                        .withOpacity(1),
                                    fontSize: 12.fSize,
                                    fontFamily: 'Nunito Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 5.v),
                                Text(
                                  "msg_start_time_9_30".tr,
                                  style: TextStyle(
                                    color: theme.colorScheme.onPrimaryContainer
                                        .withOpacity(1),
                                    fontSize: 12.fSize,
                                    fontFamily: 'Nunito Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 6.v),
                                Text(
                                  "msg_min_player_200".tr,
                                  style: TextStyle(
                                    color: theme.colorScheme.onPrimaryContainer
                                        .withOpacity(1),
                                    fontSize: 12.fSize,
                                    fontFamily: 'Nunito Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 5.v),
                                Text(
                                  "msg_max_player_10000".tr,
                                  style: TextStyle(
                                    color: theme.colorScheme.onPrimaryContainer
                                        .withOpacity(1),
                                    fontSize: 12.fSize,
                                    fontFamily: 'Nunito Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 5.v),
                                Text(
                                  "msg_participate_fee".tr,
                                  style: TextStyle(
                                    color: theme.colorScheme.onPrimaryContainer
                                        .withOpacity(1),
                                    fontSize: 12.fSize,
                                    fontFamily: 'Nunito Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgPngtreeGoldTr,
                            height: 146.adaptSize,
                            width: 146.adaptSize,
                            margin: EdgeInsets.only(
                              left: 8.h,
                              top: 3.v,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTitle(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 5.h,
          right: 18.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "lbl_your_portfolio".tr,
              style: TextStyle(
                color: appTheme.yellow700,
                fontSize: 14.73043441772461.fSize,
                fontFamily: 'Nunito Sans',
                fontWeight: FontWeight.w700,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgTelevision,
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.only(bottom: 4.v),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMegaphone(BuildContext context) {
    return Column(
      children: [
        _buildPortfolioCoin1(
          context,
          fTT: "lbl_ftt".tr,
          fTX: "lbl_ftx".tr,
          x: "lbl_x2".tr,
          price: "lbl_30_588".tr,
          eightyNine: "lbl_0_89".tr,
        ),
        SizedBox(height: 10.v),
        _buildPortfolioCoin2(
          context,
          bTC: "lbl_btc".tr,
          bitcoin: "lbl_bitcoin".tr,
          x: "lbl_x2".tr,
          price: "lbl_30_588".tr,
          oneHundredEightyNine: "lbl_1_89".tr,
        ),
        SizedBox(height: 10.v),
        _buildPortfolioCoin1(
          context,
          fTT: "lbl_ftt".tr,
          fTX: "lbl_ftx".tr,
          x: "lbl_x2".tr,
          price: "lbl_30_588".tr,
          eightyNine: "lbl_0_89".tr,
        ),
        SizedBox(height: 10.v),
        _buildPortfolioCoin2(
          context,
          bTC: "lbl_btc".tr,
          bitcoin: "lbl_bitcoin".tr,
          x: "lbl_x2".tr,
          price: "lbl_30_588".tr,
          oneHundredEightyNine: "lbl_1_89".tr,
        ),
        SizedBox(height: 10.v),
        _buildPortfolioCoin2(
          context,
          bTC: "lbl_btc".tr,
          bitcoin: "lbl_bitcoin".tr,
          x: "lbl_x2".tr,
          price: "lbl_30_588".tr,
          oneHundredEightyNine: "lbl_1_89".tr,
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildPortfolioCoin1(
    BuildContext context, {
    required String fTT,
    required String fTX,
    required String x,
    required String price,
    required String eightyNine,
  }) {
    return Container(
      decoration: AppDecoration.gradientOnPrimaryContainerToOnPrimaryContainer2
          .copyWith(
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
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            appTheme.redA700.withOpacity(0.2),
            appTheme.redA700.withOpacity(0.2),
          ],
        ),
        corners: Corners(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 9.h),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.v),
                child: CustomIconButton(
                  height: 25.adaptSize,
                  width: 25.adaptSize,
                  padding: EdgeInsets.all(5.h),
                  decoration: IconButtonStyleHelper.fillTeal,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgMegaphone,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 19.h,
                  top: 2.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        fTT,
                        style: TextStyle(
                          color: theme.colorScheme.onPrimaryContainer
                              .withOpacity(1),
                          fontSize: 12.fSize,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Text(
                      fTX,
                      style: TextStyle(
                        color: theme.colorScheme.onPrimaryContainer
                            .withOpacity(0.6),
                        fontSize: 12.fSize,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(
                  top: 10.v,
                  bottom: 7.v,
                ),
                child: Text(
                  x,
                  style: TextStyle(
                    color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                    fontSize: 12.fSize,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgGraph30x60,
                height: 30.v,
                width: 60.h,
                margin: EdgeInsets.only(
                  left: 27.h,
                  top: 2.v,
                  bottom: 2.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 23.h,
                  right: 9.h,
                ),
                child: Column(
                  children: [
                    Text(
                      price,
                      style: TextStyle(
                        color:
                            theme.colorScheme.onPrimaryContainer.withOpacity(1),
                        fontSize: 12.fSize,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        eightyNine,
                        style: TextStyle(
                          color: appTheme.redA700,
                          fontSize: 12.fSize,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildPortfolioCoin2(
    BuildContext context, {
    required String bTC,
    required String bitcoin,
    required String x,
    required String price,
    required String oneHundredEightyNine,
  }) {
    return Container(
      decoration: AppDecoration.gradientOnPrimaryContainerToOnPrimaryContainer3
          .copyWith(
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
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            appTheme.greenA70001.withOpacity(0.2),
            appTheme.greenA70001.withOpacity(0.2),
          ],
        ),
        corners: Corners(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 9.h),
          child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgComponent1,
                height: 25.adaptSize,
                width: 25.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 5.v),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 19.h,
                  top: 2.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      bTC,
                      style: TextStyle(
                        color:
                            theme.colorScheme.onPrimaryContainer.withOpacity(1),
                        fontSize: 12.fSize,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      bitcoin,
                      style: TextStyle(
                        color: theme.colorScheme.onPrimaryContainer
                            .withOpacity(0.6),
                        fontSize: 12.fSize,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(
                  top: 10.v,
                  bottom: 7.v,
                ),
                child: Text(
                  x,
                  style: TextStyle(
                    color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                    fontSize: 12.fSize,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgGraph1,
                height: 30.v,
                width: 60.h,
                margin: EdgeInsets.only(
                  left: 27.h,
                  top: 2.v,
                  bottom: 2.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 23.h,
                  right: 9.h,
                ),
                child: Column(
                  children: [
                    Text(
                      price,
                      style: TextStyle(
                        color:
                            theme.colorScheme.onPrimaryContainer.withOpacity(1),
                        fontSize: 12.fSize,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        oneHundredEightyNine,
                        style: TextStyle(
                          color: appTheme.greenA70002,
                          fontSize: 12.fSize,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
