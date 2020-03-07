import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../compenents/bb_ui.dart';
import '../utils/bb_args.dart';
import '../utils/bb_utils.dart';
import '../models/bb_models.dart';
import '../blocs/bb_live_home_bloc.dart';

import 'bb_live_home_card_view.dart';
import 'bb_live_home_rank_view.dart';
import 'bb_live_home_activity_view.dart';

class BBLiveHomeView extends StatefulWidget {
  @override
  _BBLiveHomeViewState createState() => _BBLiveHomeViewState();
}

class _BBLiveHomeViewState extends State<BBLiveHomeView> {
  RefreshController _refreshController;
  BBLiveHomeBLoC _bLoC;

  @override
  void initState() {
    super.initState();
    _refreshController = RefreshController();
    _bLoC = BBLiveHomeBLoC()..add(Load());
  }

  @override
  void dispose() {
    super.dispose();
    _refreshController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: _bLoC,
      builder: (BuildContext context, LoadState state) {
        Widget subview;
        if (state is Loading) {
          subview = BBLoadingView();
        } else if (state is Success) {
          _refreshController.refreshCompleted();
          subview = Stack(
            children: <Widget>[
              SmartRefresher(
                controller: _refreshController,
                onRefresh: () => _bLoC.add(Load()),
                child: CustomScrollView(
                  slivers: _buildSlivers(state.value),
                ),
              ),
              Positioned(
                bottom: 30.0,
                right: defaultMargin.right,
                child: Image.asset(Images.openLive),
              ),
            ],
          );
        } else {
          _refreshController.refreshCompleted();
          subview = Container();
        }
        return SafeArea(bottom: false, child: subview);
      },
    );
  }

  List<Widget> _buildSlivers(List<LiveGroup> sections) {
    List<Widget> slivers = sections
        .map((section) {
          if (section.module?.id == 1) {
            return [
              sliverToBoxAdapter(
                  padding: defaultMargin,
                  child: BBAdView(
                    aspectRatio: 375.0 / 100.0,
                    borderRadius: BorderRadius.circular(5),
                    itemBuilder: (BuildContext context, int index) {
                      return BBNetworkImage(
                        section.list[index].pic,
                        placeholder: Images.placeholder,
                      );
                    },
                    advertise: section.list?.toList(),
                  ))
            ];
          } else if (section.module?.id == 58) {
            return [
              sliverGrid<LiveTag>(
                  padding: defaultMargin,
                  items: section.list?.toList(),
                  crossAxisCount: 5,
                  lineSpacing: defaultMargin.bottom,
                  itemBuilder: (BuildContext context, LiveTag e) {
                    return BBAppView(
                      title: e.title,
                      image: e.pic,
                      imageSize: Size(44.0, 44.0),
                    );
                  })
            ];
          } else if (section.module?.id == 60) {
            return [
              sliverToBoxAdapter(
                  padding: defaultMargin.copyWith(top: 0.0, bottom: 0.0),
                  child: BBLiveHomeActivityView(activities: section))
            ];
          } else if (section.module?.id == 4) {
            return [
              sliverToBoxAdapter(
                padding: defaultMargin,
                child: BBHeadView(
                  leading: Text.rich(
                    TextSpan(
                      text: section.module?.title ?? "",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                      children: <InlineSpan>[
                        TextSpan(
                          text: " ${section.extra?.subtitle}",
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              sliverToBoxAdapter(
                  padding: defaultMargin,
                  child: BBLiveHomeRankView(section: section)),
              sliverToBoxAdapter(child: Divider()),
            ];
          } else {
            return [
              sliverToBoxAdapter(
                padding: defaultMargin,
                child: BBHeadView(
                  title: section.module?.title,
                  accessory: section?.module?.id == 3 ? "换一换" : "查看更多",
                  image: section?.module?.id == 3
                      ? Images.liveExchange
                      : Images.rightArrow,
                ),
              ),
              sliverGrid<Room>(
                padding: defaultMargin.copyWith(top: 0.0, bottom: 0.0),
                items: section.list?.toList(),
                crossAxisCount: 2,
                aspectRatio: 1.2,
                itemBuilder: (BuildContext context, Room liveRoom) {
                  return BBNavigationLink(
                    destination: BBRouteMgr.video + "${liveRoom.roomid}",
                    child: BBLiveHomeCardView(
                      item: liveRoom,
                      showAvatar: section.module?.id == 13,
                    ),
                  );
                },
              ),
              sliverToBoxAdapter(
                padding: defaultMargin,
                child: section.module?.id == 3
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "更多${section.module.count}个${section.module.title}",
                            style:
                                TextStyle(color: Colors.pink, fontSize: 14.0),
                          ),
                          Image.asset(Images.rightArrow, color: pinkColor),
                        ],
                      )
                    : SizedBox.shrink(),
              ),
              sliverToBoxAdapter(child: Divider()),
            ];
          }
        })
        .expand((slivers) => slivers)
        .toList();
    if (slivers.isNotEmpty) {
      slivers.add(sliverToBoxAdapter(
        padding: EdgeInsets.only(top: 20.0, bottom: 44.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).dividerTheme.color,
                ),
                borderRadius: BorderRadius.circular(3.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 4.0),
                child: Text("全部直播"),
              ),
            )
          ],
        ),
      ));
    }
    return slivers;
  }
}
