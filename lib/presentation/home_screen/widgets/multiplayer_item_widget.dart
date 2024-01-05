import '../models/multiplayer_item_model.dart';
import 'package:flutter/material.dart';
import 'package:insource/core/app_export.dart';
import 'package:insource/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class MultiplayerItemWidget extends StatelessWidget {
  MultiplayerItemWidget(
    this.multiplayerItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MultiplayerItemModel multiplayerItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 68.h,
      child: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            CustomIconButton(
              height: 65.adaptSize,
              width: 65.adaptSize,
              padding: EdgeInsets.all(5.h),
              decoration: IconButtonStyleHelper.outlineOnPrimaryContainer,
              child: CustomImageView(
                imagePath: multiplayerItemModelObj?.multiplayerIcon,
              ),
            ),
            SizedBox(height: 1.v),
            Text(
              multiplayerItemModelObj.multiplayerText!,
              style: TextStyle(
                color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                fontSize: 12.fSize,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
