import '../models/userprofilelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:insource/core/app_export.dart';

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  UserprofilelistItemWidget(
    this.userprofilelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilelistItemModel userprofilelistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 62.v,
            width: 64.h,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 60.adaptSize,
                    width: 60.adaptSize,
                    decoration: AppDecoration.fillBlueGray.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder30,
                    ),
                    child: CustomImageView(
                      imagePath: userprofilelistItemModelObj?.userImage,
                      height: 60.adaptSize,
                      width: 60.adaptSize,
                      radius: BorderRadius.circular(
                        30.h,
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: userprofilelistItemModelObj?.userImage1,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  alignment: Alignment.bottomRight,
                ),
              ],
            ),
          ),
          SizedBox(height: 1.v),
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Text(
              userprofilelistItemModelObj.userName!,
              style: TextStyle(
                color: appTheme.gray500,
                fontSize: 11.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
