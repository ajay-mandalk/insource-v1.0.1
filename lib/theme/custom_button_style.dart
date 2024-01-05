import 'dart:ui';
import 'package:insource/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Gradient button style
  static BoxDecoration get gradientPrimaryToOnPrimaryDecoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(15.h),
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(1.02, 0),
          colors: [
            theme.colorScheme.primary,
            theme.colorScheme.onPrimary,
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToRedADecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(16.h),
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(1.0, 1),
          colors: [
            theme.colorScheme.primary,
            appTheme.redA700.withOpacity(0.15),
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToRedATL10Decoration => BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.black9007f.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(1.0, 1),
          colors: [
            theme.colorScheme.primary,
            appTheme.redA700.withOpacity(0.03),
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToRedATL11Decoration => BoxDecoration(
        borderRadius: BorderRadius.circular(11.h),
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(1.0, 1),
          colors: [
            theme.colorScheme.primary,
            appTheme.redA700.withOpacity(0.15),
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToRedATL8Decoration => BoxDecoration(
        borderRadius: BorderRadius.circular(8.h),
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(1.0, 1),
          colors: [
            theme.colorScheme.primary,
            appTheme.redA700.withOpacity(0.15),
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToRedATL9Decoration => BoxDecoration(
        borderRadius: BorderRadius.circular(9.h),
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(1.0, 1),
          colors: [
            theme.colorScheme.primary,
            appTheme.redA700.withOpacity(0.15),
          ],
        ),
      );
  static BoxDecoration get gradientRedAToPrimaryDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(5.h),
        gradient: LinearGradient(
          begin: Alignment(1.01, 1),
          end: Alignment(-0.01, 0),
          colors: [
            appTheme.redA700.withOpacity(0.15),
            theme.colorScheme.primary,
          ],
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
