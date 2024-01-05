import '../completed_page/widgets/contestcardlist_item_widget.dart';
import 'models/contestcardlist_item_model.dart';
import 'notifier/completed_notifier.dart';
import 'package:flutter/material.dart';
import 'package:insource/core/app_export.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore_for_file: must_be_immutable
class CompletedPage extends ConsumerStatefulWidget {
  const CompletedPage({Key? key})
      : super(
          key: key,
        );

  @override
  CompletedPageState createState() => CompletedPageState();
}

class CompletedPageState extends ConsumerState<CompletedPage>
    with AutomaticKeepAliveClientMixin<CompletedPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          margin: EdgeInsets.only(top: 94.v),
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 20.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Column(
                  children: [
                    _buildContestCardList(context),
                    _buildNavBar(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildContestCardList(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 20.v,
            );
          },
          itemCount: ref
                  .watch(completedNotifier)
                  .completedModelObj
                  ?.contestcardlistItemList
                  .length ??
              0,
          itemBuilder: (context, index) {
            ContestcardlistItemModel model = ref
                    .watch(completedNotifier)
                    .completedModelObj
                    ?.contestcardlistItemList[index] ??
                ContestcardlistItemModel();
            return ContestcardlistItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildNavBar(BuildContext context) {
    return OutlineGradientButton(
      padding: EdgeInsets.only(
        left: 1.h,
        top: 1.v,
        right: 1.h,
        bottom: 1.v,
      ),
      strokeWidth: 1.h,
      gradient: LinearGradient(
        begin: Alignment(0.97, 1),
        end: Alignment(0, 0),
        colors: [
          theme.colorScheme.onPrimaryContainer.withOpacity(0.2),
          theme.colorScheme.onPrimaryContainer.withOpacity(0.1),
          theme.colorScheme.onPrimaryContainer.withOpacity(0.05),
        ],
      ),
      corners: Corners(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
        bottomLeft: Radius.circular(16),
        bottomRight: Radius.circular(16),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 19.h),
        decoration: AppDecoration
            .gradientOnPrimaryContainerToOnPrimaryContainer5
            .copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgNavitemOnprimarycontainer,
          height: 72.v,
          width: 301.h,
        ),
      ),
    );
  }
}
