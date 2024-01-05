import '../share_invite_screen/widgets/frame_item_widget.dart';
import '../share_invite_screen/widgets/userprofilelist_item_widget.dart';
import 'models/frame_item_model.dart';
import 'models/userprofilelist_item_model.dart';
import 'notifier/share_invite_notifier.dart';
import 'package:flutter/material.dart';
import 'package:insource/core/app_export.dart';
import 'package:insource/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:insource/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:insource/widgets/app_bar/custom_app_bar.dart';
import 'package:insource/widgets/custom_elevated_button.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class ShareInviteScreen extends ConsumerStatefulWidget {
  const ShareInviteScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ShareInviteScreenState createState() => ShareInviteScreenState();
}

class ShareInviteScreenState extends ConsumerState<ShareInviteScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 31.v),
            child: Column(
              children: [
                _buildPriceRow(context),
                SizedBox(height: 18.v),
                _buildInviteRow(context),
                SizedBox(height: 42.v),
                _buildHowItsWorkRow(context),
                SizedBox(height: 2.v),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 18.h,
                    vertical: 16.v,
                  ),
                  decoration:
                      AppDecoration.gradientOnPrimaryContainerToGray.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL20,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildDescriptionRow(context),
                      SizedBox(height: 5.v),
                      Padding(
                        padding: EdgeInsets.only(left: 31.h),
                        child: Text(
                          "msg_plade_app_link_as75ydn69".tr,
                          style: TextStyle(
                            color: appTheme.gray50001,
                            fontSize: 12.143712997436523.fSize,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: 46.v),
                      Divider(
                        color: appTheme.gray30001,
                        endIndent: 17.h,
                      ),
                      SizedBox(height: 14.v),
                      _buildUserProfileList(context),
                      SizedBox(height: 18.v),
                      Divider(
                        color: appTheme.gray30001,
                        endIndent: 17.h,
                      ),
                      SizedBox(height: 16.v),
                      _buildCopyColumn(context),
                      SizedBox(height: 88.v),
                    ],
                  ),
                ),
              ],
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
  Widget _buildPriceRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 38.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 29.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_earn_5000".tr,
                  style: TextStyle(
                    color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                    fontSize: 18.fSize,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Opacity(
                  opacity: 0.5,
                  child: Text(
                    "msg_refer_your_friend".tr,
                    style: TextStyle(
                      color: theme.colorScheme.onPrimaryContainer
                          .withOpacity(0.53),
                      fontSize: 14.fSize,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImageRemovebgPreview104x157,
            height: 104.v,
            width: 157.h,
            margin: EdgeInsets.only(left: 39.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInviteRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 24.h,
        right: 28.h,
      ),
      decoration: AppDecoration.gradientOnPrimaryContainerToOnPrimaryContainer8
          .copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
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
          topLeft: Radius.circular(9),
          topRight: Radius.circular(9),
          bottomLeft: Radius.circular(9),
          bottomRight: Radius.circular(9),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 11.h,
            vertical: 7.v,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 1.v),
                padding: EdgeInsets.symmetric(
                  horizontal: 12.h,
                  vertical: 9.v,
                ),
                decoration:
                    AppDecoration.gradientErrorContainerToOrange.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder10,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_500".tr,
                      style: TextStyle(
                        color:
                            theme.colorScheme.onPrimaryContainer.withOpacity(1),
                        fontSize: 24.fSize,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Opacity(
                      opacity: 0.8,
                      child: Text(
                        "lbl_collected".tr,
                        style: TextStyle(
                          color: theme.colorScheme.onPrimaryContainer,
                          fontSize: 12.fSize,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 15.h,
                  top: 11.v,
                  bottom: 11.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Opacity(
                          opacity: 0.67,
                          child: Text(
                            "msg_invite_accepted".tr,
                            style: TextStyle(
                              color: theme.colorScheme.onPrimaryContainer
                                  .withOpacity(0.59),
                              fontSize: 12.fSize,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text(
                            "lbl_10".tr,
                            style: TextStyle(
                              color: theme.colorScheme.onPrimaryContainer
                                  .withOpacity(1),
                              fontSize: 12.fSize,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 9.v),
                    SizedBox(
                      width: 129.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Opacity(
                            opacity: 0.67,
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 1.v),
                              child: Text(
                                "lbl_next_reward".tr,
                                style: TextStyle(
                                  color: theme.colorScheme.onPrimaryContainer
                                      .withOpacity(0.59),
                                  fontSize: 12.fSize,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "lbl_1000".tr,
                            style: TextStyle(
                              color: theme.colorScheme.onPrimaryContainer
                                  .withOpacity(1),
                              fontSize: 12.fSize,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgIconGray1009x5,
                height: 9.v,
                width: 5.h,
                margin: EdgeInsets.only(
                  top: 26.v,
                  right: 7.h,
                  bottom: 27.v,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHowItsWorkRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 34.h,
        right: 39.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Opacity(
            opacity: 0.1,
            child: Padding(
              padding: EdgeInsets.only(
                top: 8.v,
                bottom: 5.v,
              ),
              child: SizedBox(
                width: 110.h,
                child: Divider(),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Text(
              "lbl_how_it_works".tr,
              style: TextStyle(
                color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                fontSize: 12.fSize,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Opacity(
            opacity: 0.1,
            child: Padding(
              padding: EdgeInsets.only(
                top: 8.v,
                bottom: 5.v,
              ),
              child: SizedBox(
                width: 113.h,
                child: Divider(
                  indent: 9.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDescriptionRow(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(
          left: 27.h,
          right: 3.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SizedBox(
                width: 260.h,
                child: Text(
                  "msg_hey_you_definitely".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                    fontSize: 13.427229881286621.fSize,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgClose,
              height: 10.v,
              width: 11.h,
              margin: EdgeInsets.only(
                left: 51.h,
                top: 3.v,
                bottom: 21.v,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return SizedBox(
      height: 80.v,
      child: Consumer(
        builder: (context, ref, _) {
          return ListView.separated(
            padding: EdgeInsets.only(
              left: 8.h,
              right: 20.h,
            ),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 23.h,
              );
            },
            itemCount: ref
                    .watch(shareInviteNotifier)
                    .shareInviteModelObj
                    ?.userprofilelistItemList
                    .length ??
                0,
            itemBuilder: (context, index) {
              UserprofilelistItemModel model = ref
                      .watch(shareInviteNotifier)
                      .shareInviteModelObj
                      ?.userprofilelistItemList[index] ??
                  UserprofilelistItemModel();
              return UserprofilelistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCopyColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 9.h),
      child: Column(
        children: [
          SizedBox(
            height: 80.v,
            child: Consumer(
              builder: (context, ref, _) {
                return ListView.separated(
                  padding: EdgeInsets.only(left: 1.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      width: 33.h,
                    );
                  },
                  itemCount: ref
                          .watch(shareInviteNotifier)
                          .shareInviteModelObj
                          ?.frameItemList
                          .length ??
                      0,
                  itemBuilder: (context, index) {
                    FrameItemModel model = ref
                            .watch(shareInviteNotifier)
                            .shareInviteModelObj
                            ?.frameItemList[index] ??
                        FrameItemModel();
                    return FrameItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
          SizedBox(height: 21.v),
          SizedBox(
            height: 47.v,
            width: 327.h,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 21.h,
                      vertical: 10.v,
                    ),
                    decoration: AppDecoration.outlineBlack9007f,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgUserGray50023x20,
                      height: 23.v,
                      width: 20.h,
                    ),
                  ),
                ),
                CustomElevatedButton(
                  width: 260.h,
                  text: "lbl_copy".tr,
                  buttonStyle: CustomButtonStyles.none,
                  decoration:
                      CustomButtonStyles.gradientPrimaryToRedATL9Decoration,
                  alignment: Alignment.centerLeft,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
