import 'notifier/your_match_notifier.dart';
import 'package:flutter/material.dart';
import 'package:insource/core/app_export.dart';
import 'package:insource/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class YourMatchPage extends ConsumerStatefulWidget {
  const YourMatchPage({Key? key})
      : super(
          key: key,
        );

  @override
  YourMatchPageState createState() => YourMatchPageState();
}

class YourMatchPageState extends ConsumerState<YourMatchPage>
    with AutomaticKeepAliveClientMixin<YourMatchPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 57.h),
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImageRemovebgPreview260x225,
                      height: 260.v,
                      width: 225.h,
                      radius: BorderRadius.circular(
                        16.h,
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Container(
                      width: 227.h,
                      margin: EdgeInsets.symmetric(horizontal: 24.h),
                      child: Text(
                        "msg_you_haven_t_joined3".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: appTheme.blueGray10002,
                          fontSize: 11.644285202026367.fSize,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.v),
                    CustomElevatedButton(
                      text: "msg_view_upcoming_contest".tr,
                      buttonStyle: CustomButtonStyles.none,
                      decoration:
                          CustomButtonStyles.gradientPrimaryToRedADecoration,
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
