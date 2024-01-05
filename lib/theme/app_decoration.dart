import 'package:flutter/material.dart';
import 'package:insource/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray100,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray900,
      );

  // Gradient decorations
  static BoxDecoration get gradientErrorContainerToOrange => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.06, 0.11),
          end: Alignment(0.14, 0.84),
          colors: [
            theme.colorScheme.errorContainer,
            appTheme.orange500,
          ],
        ),
      );
  static BoxDecoration get gradientGreenAToGreenA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            appTheme.greenA70002,
            appTheme.greenA70002.withOpacity(0.15),
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryContainerToGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            theme.colorScheme.onPrimaryContainer.withOpacity(0.15),
            appTheme.gray10001.withOpacity(0.03),
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryContainerToOnPrimaryContainer =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            theme.colorScheme.onPrimaryContainer.withOpacity(0.15),
            theme.colorScheme.onPrimaryContainer.withOpacity(0.02),
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryContainerToOnPrimaryContainer1 =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            theme.colorScheme.onPrimaryContainer.withOpacity(0.15),
            theme.colorScheme.onPrimaryContainer.withOpacity(0.03),
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryContainerToOnPrimaryContainer2 =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            theme.colorScheme.onPrimaryContainer.withOpacity(0.15),
            theme.colorScheme.onPrimaryContainer.withOpacity(0.03),
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryContainerToOnPrimaryContainer3 =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(0.99, 1.11),
          colors: [
            theme.colorScheme.onPrimaryContainer.withOpacity(0.15),
            theme.colorScheme.onPrimaryContainer.withOpacity(0.03),
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryContainerToOnPrimaryContainer4 =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            theme.colorScheme.onPrimaryContainer.withOpacity(0.15),
            theme.colorScheme.onPrimaryContainer.withOpacity(0.03),
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryContainerToOnPrimaryContainer5 =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            theme.colorScheme.onPrimaryContainer.withOpacity(0.15),
            theme.colorScheme.onPrimaryContainer.withOpacity(0.02),
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryContainerToOnPrimaryContainer6 =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            theme.colorScheme.onPrimaryContainer.withOpacity(0.3),
            theme.colorScheme.onPrimaryContainer.withOpacity(0.3),
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryContainerToOnPrimaryContainer7 =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            theme.colorScheme.onPrimaryContainer.withOpacity(0.3),
            theme.colorScheme.onPrimaryContainer.withOpacity(0.3),
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryContainerToOnPrimaryContainer8 =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            theme.colorScheme.onPrimaryContainer.withOpacity(0.15),
            theme.colorScheme.onPrimaryContainer.withOpacity(0.03),
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryContainerToOnPrimaryContainer9 =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            theme.colorScheme.onPrimaryContainer.withOpacity(0.15),
            theme.colorScheme.onPrimaryContainer.withOpacity(0.03),
          ],
        ),
      );
  static BoxDecoration get gradientRedAToPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1.01, 1),
          end: Alignment(-0.01, 0),
          colors: [
            appTheme.redA700.withOpacity(0.15),
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientRedAToRedA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            appTheme.redA700,
            appTheme.redA700.withOpacity(0.15),
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outline => BoxDecoration(
        color: appTheme.redA700,
      );
  static BoxDecoration get outlineBlack9007f => BoxDecoration();
  static BoxDecoration get outlineBlackF => BoxDecoration();
  static BoxDecoration get outlineOnPrimaryContainer => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.onPrimaryContainer.withOpacity(0.2),
          width: 1.h,
        ),
      );
  static BoxDecoration get outline1 => BoxDecoration();
  static BoxDecoration get outline2 => BoxDecoration();
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder30 => BorderRadius.circular(
        30.h,
      );
  static BorderRadius get circleBorder40 => BorderRadius.circular(
        40.h,
      );
  static BorderRadius get circleBorder6 => BorderRadius.circular(
        6.h,
      );

  // Custom borders
  static BorderRadius get customBorderTL20 => BorderRadius.vertical(
        top: Radius.circular(20.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder27 => BorderRadius.circular(
        27.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
