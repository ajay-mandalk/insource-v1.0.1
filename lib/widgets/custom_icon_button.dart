import 'package:flutter/material.dart';
import 'package:insource/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: theme.colorScheme.onPrimaryContainer.withOpacity(0.08),
                  borderRadius: BorderRadius.circular(16.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get outlineOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.1),
        borderRadius: BorderRadius.circular(32.h),
        border: Border.all(
          color: theme.colorScheme.onPrimaryContainer.withOpacity(0.1),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineRedA => BoxDecoration(
        borderRadius: BorderRadius.circular(28.h),
        border: Border.all(
          color: appTheme.redA700,
          width: 3.h,
        ),
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
      );
  static BoxDecoration get outlineGreenA => BoxDecoration(
        borderRadius: BorderRadius.circular(28.h),
        border: Border.all(
          color: appTheme.greenA70001,
          width: 3.h,
        ),
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
      );
  static BoxDecoration get fillTeal => BoxDecoration(
        color: appTheme.teal900,
        borderRadius: BorderRadius.circular(12.h),
      );
  static BoxDecoration get outlineOnPrimaryContainerTL28 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.1),
        borderRadius: BorderRadius.circular(28.h),
        border: Border.all(
          color: theme.colorScheme.onPrimaryContainer.withOpacity(0.1),
          width: 1.h,
        ),
      );
  static BoxDecoration get fillOnPrimaryContainerTL19 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.15),
        borderRadius: BorderRadius.circular(19.h),
      );
  static BoxDecoration get outlineBlackF => BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: appTheme.black9007f.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
}
