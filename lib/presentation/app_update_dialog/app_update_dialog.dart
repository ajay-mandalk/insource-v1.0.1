import 'notifier/app_update_notifier.dart';
import 'package:flutter/material.dart';
import 'package:insource/core/app_export.dart';
import 'package:insource/widgets/custom_elevated_button.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore_for_file: must_be_immutable
class AppUpdateDialog extends ConsumerStatefulWidget {
  const AppUpdateDialog({Key? key})
      : super(
          key: key,
        );

  @override
  AppUpdateDialogState createState() => AppUpdateDialogState();
}

class AppUpdateDialogState extends ConsumerState<AppUpdateDialog> {
  @override
  Widget build(BuildContext context) {
    return OutlineGradientButton(
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
          appTheme.black9007f.withOpacity(0.03),
        ],
      ),
      corners: Corners(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
        bottomLeft: Radius.circular(10),
        bottomRight: Radius.circular(10),
      ),
      child: Container(
        width: 289.h,
        padding: EdgeInsets.symmetric(
          horizontal: 38.h,
          vertical: 32.v,
        ),
        decoration: AppDecoration
            .gradientOnPrimaryContainerToOnPrimaryContainer9
            .copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 63.v),
            Text(
              "msg_app_update_required".tr,
              style: TextStyle(
                color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                fontSize: 19.62755012512207.fSize,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 13.v),
            Container(
              width: 192.h,
              margin: EdgeInsets.only(
                left: 11.h,
                right: 7.h,
              ),
              child: Text(
                "msg_we_have_added_new".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                  fontSize: 8.349903106689453.fSize,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 32.v),
            CustomElevatedButton(
              text: "lbl_update_app".tr,
              margin: EdgeInsets.symmetric(horizontal: 24.h),
              buttonStyle: CustomButtonStyles.none,
              decoration:
                  CustomButtonStyles.gradientPrimaryToRedATL10Decoration,
            ),
          ],
        ),
      ),
    );
  }
}
