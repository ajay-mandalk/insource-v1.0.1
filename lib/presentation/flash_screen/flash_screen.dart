import 'dart:async';
import 'package:flutter/material.dart';
import 'package:insource/core/app_export.dart';
import 'package:insource/presentation/home_screen/home_screen.dart';
import 'package:insource/presentation/login_screen/login_screen.dart';

class FlashScreen extends ConsumerStatefulWidget {
  const FlashScreen({Key? key}) : super(key: key);

  @override
  FlashScreenState createState() => FlashScreenState();
}

class FlashScreenState extends ConsumerState<FlashScreen> {
  @override
  void initState() {
    super.initState();

    // Add a delay to transition to the login screen after 5 seconds
    Timer(Duration(seconds: 10), () {
      // Push the login screen to the navigator
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => HomeScreen(), // Replace 'LoginScreen' with your actual login screen
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: SizeUtils.height,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 26.v),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgChartGraphis,
                height: 457.v,
                width: 390.h,
                alignment: Alignment.bottomCenter,
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 202.v,
                  width: 183.h,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgVector,
                        height: 91.v,
                        width: 105.h,
                        alignment: Alignment.topCenter,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgVector93x61,
                        height: 93.v,
                        width: 61.h,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 39.h, top: 36.v),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "lbl_plade".tr,
                          style: TextStyle(
                            color: theme.colorScheme.secondaryContainer,
                            fontSize: 64.fSize,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
