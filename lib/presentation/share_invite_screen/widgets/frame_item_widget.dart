import '../models/frame_item_model.dart';
import 'package:flutter/material.dart';
import 'package:insource/core/app_export.dart';

// ignore: must_be_immutable
class FrameItemWidget extends StatelessWidget {
  FrameItemWidget(
    this.frameItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FrameItemModel frameItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 52.h,
      child: Padding(
        padding: EdgeInsets.only(
          top: 7.v,
          bottom: 1.v,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: frameItemModelObj?.message,
              height: 52.adaptSize,
              width: 52.adaptSize,
              alignment: Alignment.center,
            ),
            SizedBox(height: 4.v),
            Text(
              frameItemModelObj.message1!,
              style: TextStyle(
                color: appTheme.gray500,
                fontSize: 11.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
