import '../models/rankingrow_item_model.dart';
import 'package:flutter/material.dart';
import 'package:insource/core/app_export.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore: must_be_immutable
class RankingrowItemWidget extends StatelessWidget {
  RankingrowItemWidget(
    this.rankingrowItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RankingrowItemModel rankingrowItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.gradientOnPrimaryContainerToOnPrimaryContainer4
          .copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: OutlineGradientButton(
        padding: EdgeInsets.only(
          left: 1.h,
          top: 1.v,
          right: 1.h,
          bottom: 1.v,
        ),
        strokeWidth: 1.h,
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            theme.colorScheme.onPrimaryContainer.withOpacity(0.15),
            theme.colorScheme.onPrimaryContainer.withOpacity(0.03),
          ],
        ),
        corners: Corners(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 17.h,
            vertical: 3.v,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 5.v,
                  bottom: 3.v,
                ),
                child: Text(
                  rankingrowItemModelObj.rank!,
                  style: TextStyle(
                    color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                    fontSize: 12.fSize,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 58.h,
                  top: 5.v,
                  bottom: 2.v,
                ),
                child: Text(
                  rankingrowItemModelObj.range!,
                  style: TextStyle(
                    color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                    fontSize: 12.fSize,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 105.h,
                  top: 4.v,
                ),
                child: Text(
                  rankingrowItemModelObj.amount!,
                  style: TextStyle(
                    color: appTheme.yellow700,
                    fontSize: 14.73043441772461.fSize,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
