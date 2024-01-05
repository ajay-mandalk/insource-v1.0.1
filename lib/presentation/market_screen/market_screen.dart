import '../market_screen/widgets/userprofile_item_widget.dart';
import 'models/userprofile_item_model.dart';
import 'notifier/market_notifier.dart';
import 'package:flutter/material.dart';
import 'package:insource/core/app_export.dart';
import 'package:insource/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:insource/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:insource/widgets/app_bar/custom_app_bar.dart';

class MarketScreen extends ConsumerStatefulWidget {
  const MarketScreen({Key? key})
      : super(
          key: key,
        );

  @override
  MarketScreenState createState() => MarketScreenState();
}

class MarketScreenState extends ConsumerState<MarketScreen> {
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
              SizedBox(height: 4.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "lbl_markets".tr,
                  style: TextStyle(
                    color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                    fontSize: 20.fSize,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 17.v),
              _buildTitle(context),
              SizedBox(height: 17.v),
              _buildUserProfile(context),
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
          imagePath: ImageConstant.imgBtnSquare,
          margin: EdgeInsets.fromLTRB(28.h, 4.v, 28.h, 8.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTitle(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Text(
              "lbl_top_coins".tr,
              style: TextStyle(
                color: theme.colorScheme.onPrimaryContainer.withOpacity(0.6),
                fontSize: 14.fSize,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Text(
              "lbl_graph".tr,
              style: TextStyle(
                color: theme.colorScheme.onPrimaryContainer.withOpacity(0.6),
                fontSize: 14.fSize,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Text(
            "lbl_24h".tr,
            style: TextStyle(
              color: theme.colorScheme.onPrimaryContainer.withOpacity(0.6),
              fontSize: 14.fSize,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
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
                  .watch(marketNotifier)
                  .marketModelObj
                  ?.userprofileItemList
                  .length ??
              0,
          itemBuilder: (context, index) {
            UserprofileItemModel model = ref
                    .watch(marketNotifier)
                    .marketModelObj
                    ?.userprofileItemList[index] ??
                UserprofileItemModel();
            return UserprofileItemWidget(
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
        imagePath: ImageConstant.imgNavitemOnprimarycontainer72x301,
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
