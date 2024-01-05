import '../gaming_screen_one_screen/widgets/viewhierarchy1_item_widget.dart';
import 'models/viewhierarchy1_item_model.dart';
import 'notifier/gaming_screen_one_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:insource/core/app_export.dart';
import 'package:insource/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:insource/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:insource/widgets/app_bar/custom_app_bar.dart';
import 'package:insource/widgets/custom_icon_button.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class GamingScreenOneScreen extends ConsumerStatefulWidget {
  const GamingScreenOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  GamingScreenOneScreenState createState() => GamingScreenOneScreenState();
}

class GamingScreenOneScreenState extends ConsumerState<GamingScreenOneScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 16.v),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: Column(
                children: [
                  _buildGamingCard(context),
                  SizedBox(height: 16.v),
                  _buildYourPortfolio(context),
                  SizedBox(height: 15.v),
                  _buildTitle(context),
                  SizedBox(height: 13.v),
                  _buildViewHierarchy(context),
                ],
              ),
            ),
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
  Widget _buildGamingCard(BuildContext context) {
    return SizedBox(
      height: 150.v,
      width: 342.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGraph,
            height: 133.v,
            width: 299.h,
            alignment: Alignment.topCenter,
          ),
          Align(
            alignment: Alignment.center,
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1.h,
                ),
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Container(
                height: 150.v,
                width: 342.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 18.h,
                  vertical: 4.v,
                ),
                decoration: AppDecoration
                    .gradientOnPrimaryContainerToOnPrimaryContainer1
                    .copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgVector9,
                      height: 85.v,
                      width: 226.h,
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(
                        left: 1.h,
                        bottom: 18.v,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        height: 81.v,
                        width: 226.h,
                        margin: EdgeInsets.only(
                          left: 1.h,
                          bottom: 18.v,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: fs.Svg(
                              ImageConstant.imgGroup37,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgVector7,
                          height: 81.v,
                          width: 225.h,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgVector8,
                      height: 106.v,
                      width: 227.h,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(
                        left: 1.h,
                        top: 13.v,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgProfile11x10,
                      height: 11.v,
                      width: 10.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(
                        top: 9.v,
                        right: 70.h,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgProfile11x10,
                      height: 11.v,
                      width: 10.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(
                        top: 33.v,
                        right: 70.h,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgProfile11x10,
                      height: 11.v,
                      width: 10.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(
                        top: 53.v,
                        right: 70.h,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgProfile11x10,
                      height: 11.v,
                      width: 10.h,
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(
                        right: 70.h,
                        bottom: 47.v,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup427318361,
                      height: 5.v,
                      width: 300.h,
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.only(bottom: 14.v),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(top: 4.v),
                        child: Text(
                          "lbl_rank_chart".tr,
                          style: TextStyle(
                            color: theme.colorScheme.onPrimaryContainer
                                .withOpacity(0.6),
                            fontSize: 12.fSize,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 3.h),
                        child: Text(
                          "lbl_1m_56s".tr,
                          style: TextStyle(
                            color: theme.colorScheme.onPrimaryContainer
                                .withOpacity(1),
                            fontSize: 10.fSize,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Text(
                          "lbl_start".tr,
                          style: TextStyle(
                            color: theme.colorScheme.onPrimaryContainer
                                .withOpacity(0.6),
                            fontSize: 10.fSize,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildYourPortfolio(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 5.h),
          child: Text(
            "lbl_your_portfolio".tr,
            style: TextStyle(
              color: appTheme.yellow700,
              fontSize: 14.73043441772461.fSize,
              fontFamily: 'Nunito Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        SizedBox(height: 12.v),
        Column(
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
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTitle(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 6.h,
        right: 13.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgCrown,
            height: 15.adaptSize,
            width: 15.adaptSize,
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 3.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Text(
              "lbl_leaderboard".tr,
              style: TextStyle(
                color: appTheme.yellow700,
                fontSize: 14.73043441772461.fSize,
                fontFamily: 'Nunito Sans',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 3.v),
            child: Text(
              "lbl_1v4".tr,
              style: TextStyle(
                color: appTheme.blueGray10001,
                fontSize: 11.550000190734863.fSize,
                fontFamily: 'Nunito Sans',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildViewHierarchy(BuildContext context) {
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
              height: 10.v,
            );
          },
          itemCount: ref
                  .watch(gamingScreenOneNotifier)
                  .gamingScreenOneModelObj
                  ?.viewhierarchy1ItemList
                  .length ??
              0,
          itemBuilder: (context, index) {
            Viewhierarchy1ItemModel model = ref
                    .watch(gamingScreenOneNotifier)
                    .gamingScreenOneModelObj
                    ?.viewhierarchy1ItemList[index] ??
                Viewhierarchy1ItemModel();
            return Viewhierarchy1ItemWidget(
              model,
            );
          },
        );
      },
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
