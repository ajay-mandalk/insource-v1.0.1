import '../coin_selection_screen/widgets/framelist_item_widget.dart';
import '../coin_selection_screen/widgets/listcoinselection_item_widget.dart';
import 'models/framelist_item_model.dart';
import 'models/listcoinselection_item_model.dart';
import 'notifier/coin_selection_notifier.dart';
import 'package:flutter/material.dart';
import 'package:insource/core/app_export.dart';
import 'package:insource/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:insource/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:insource/widgets/app_bar/custom_app_bar.dart';
import 'package:insource/widgets/custom_icon_button.dart';

class CoinSelectionScreen extends ConsumerStatefulWidget {
  const CoinSelectionScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CoinSelectionScreenState createState() => CoinSelectionScreenState();
}

class CoinSelectionScreenState extends ConsumerState<CoinSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 17.h,
            vertical: 6.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: Text(
                  "msg_select_your_coin".tr,
                  style: TextStyle(
                    color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                    fontSize: 20.fSize,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 14.v),
              _buildFrameList(context),
              SizedBox(height: 24.v),
              _buildRowTitle(context),
              SizedBox(height: 19.v),
              _buildListCoinSelection(context),
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
  Widget _buildFrameList(BuildContext context) {
    return Container(
      height: 67.v,
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 5.v,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Consumer(
        builder: (context, ref, _) {
          return ListView.separated(
            padding: EdgeInsets.only(right: 14.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 5.h,
              );
            },
            itemCount: ref
                    .watch(coinSelectionNotifier)
                    .coinSelectionModelObj
                    ?.framelistItemList
                    .length ??
                0,
            itemBuilder: (context, index) {
              FramelistItemModel model = ref
                      .watch(coinSelectionNotifier)
                      .coinSelectionModelObj
                      ?.framelistItemList[index] ??
                  FramelistItemModel();
              return FramelistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildRowTitle(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 7.h,
        right: 34.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_choose_coins".tr,
            style: TextStyle(
              color: appTheme.blueGray10001,
              fontSize: 20.fSize,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          CustomIconButton(
            height: 27.adaptSize,
            width: 27.adaptSize,
            child: CustomImageView(),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildListCoinSelection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7.h),
      child: Consumer(
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
                    .watch(coinSelectionNotifier)
                    .coinSelectionModelObj
                    ?.listcoinselectionItemList
                    .length ??
                0,
            itemBuilder: (context, index) {
              ListcoinselectionItemModel model = ref
                      .watch(coinSelectionNotifier)
                      .coinSelectionModelObj
                      ?.listcoinselectionItemList[index] ??
                  ListcoinselectionItemModel();
              return ListcoinselectionItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
