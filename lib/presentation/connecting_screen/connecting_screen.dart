import 'notifier/connecting_notifier.dart';
import 'package:flutter/material.dart';
import 'package:insource/core/app_export.dart';
import 'package:insource/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:insource/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:insource/widgets/app_bar/custom_app_bar.dart';

class ConnectingScreen extends ConsumerStatefulWidget {
  const ConnectingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ConnectingScreenState createState() => ConnectingScreenState();
}

class ConnectingScreenState extends ConsumerState<ConnectingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _buildAppBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: SizeUtils.height,
      leadingWidth: 72.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 24.v,
          bottom: 772.v,
        ),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgIconLinearBell,
          margin: EdgeInsets.fromLTRB(24.h, 24.v, 24.h, 772.v),
        ),
      ],
      styleType: Style.bgFill,
    );
  }
}
