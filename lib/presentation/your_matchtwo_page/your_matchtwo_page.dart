import 'notifier/your_matchtwo_notifier.dart';
import 'package:flutter/material.dart';
import 'package:insource/core/app_export.dart';
import 'package:insource/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class YourMatchtwoPage extends ConsumerStatefulWidget {
  const YourMatchtwoPage({Key? key})
      : super(
          key: key,
        );

  @override
  YourMatchtwoPageState createState() => YourMatchtwoPageState();
}

class YourMatchtwoPageState extends ConsumerState<YourMatchtwoPage>
    with AutomaticKeepAliveClientMixin<YourMatchtwoPage> {
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
                      imagePath: ImageConstant.imgImage11,
                      height: 260.v,
                      width: 225.h,
                      radius: BorderRadius.circular(
                        16.h,
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Container(
                      width: 223.h,
                      margin: EdgeInsets.only(
                        left: 25.h,
                        right: 27.h,
                      ),
                      child: Text(
                        "msg_you_haven_t_joined".tr,
                        maxLines: 2,
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
                    SizedBox(height: 27.v),
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
