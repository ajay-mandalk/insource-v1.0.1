import 'package:flutter/material.dart';
import 'package:insource/core/app_export.dart';

// ignore: must_be_immutable
class AppbarTitle extends StatelessWidget {
  AppbarTitle({
    Key? key,
    required this.text,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          style: TextStyle(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
            fontSize: 16.fSize,
            fontFamily: 'Open Sans',
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
