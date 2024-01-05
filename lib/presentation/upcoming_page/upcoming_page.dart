import '../upcoming_page/widgets/contestcard1_item_widget.dart';
import 'models/contestcard1_item_model.dart';
import 'notifier/upcoming_notifier.dart';
import 'package:flutter/material.dart';
import 'package:insource/core/app_export.dart';

// ignore_for_file: must_be_immutable
class UpcomingPage extends ConsumerStatefulWidget {
  const UpcomingPage({Key? key})
      : super(
          key: key,
        );

  @override
  UpcomingPageState createState() => UpcomingPageState();
}

class UpcomingPageState extends ConsumerState<UpcomingPage>
    with AutomaticKeepAliveClientMixin<UpcomingPage> {
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
              SizedBox(height: 20.v),
              _buildContestCard(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildContestCard(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Consumer(
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
                    .watch(upcomingNotifier)
                    .upcomingModelObj
                    ?.contestcard1ItemList
                    .length ??
                0,
            itemBuilder: (context, index) {
              Contestcard1ItemModel model = ref
                      .watch(upcomingNotifier)
                      .upcomingModelObj
                      ?.contestcard1ItemList[index] ??
                  Contestcard1ItemModel();
              return Contestcard1ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
