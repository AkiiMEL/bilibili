import 'package:bilibili/widgets/bili_image.dart';
import 'package:flutter/material.dart';

import 'package:bilibili/models/bili_live_models.dart';
import 'package:bilibili/utils/bili_args.dart';

class BiliLiveRankSectionView extends StatelessWidget {
  final LiveSection<LiveRank> section;

  BiliLiveRankSectionView({this.section});

  @override
  Widget build(BuildContext context) {
    // Fix sort order with 2 1 3;
    LiveRank goldMedal =
        section.list?.firstWhere((e) => e.rank == 1, orElse: () => null);
    LiveRank silverMedal =
        section.list?.firstWhere((e) => e.rank == 2, orElse: () => null);
    LiveRank bronzeMedal =
        section.list?.firstWhere((e) => e.rank == 3, orElse: () => null);

    List<LiveRank> models = [];
    if (silverMedal != null) {
      models.add(silverMedal);
    }
    if (goldMedal != null) {
      models.add(goldMedal);
    }
    if (bronzeMedal != null) {
      models.add(bronzeMedal);
    }

    return models.isEmpty
        ? SizedBox.shrink()
        : Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Center(
              child: Wrap(
                spacing: 24.0,
                crossAxisAlignment: WrapCrossAlignment.end,
                children: models.map((e) {
                  return _getRakItem(context, e);
                }).toList(),
              ),
            ),
          );
  }

  Widget _getRakItem(BuildContext context, LiveRank rank) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        _getRankAvatarView(context, rank),
        SizedBox(
          height: spacing / 2,
        ),
        Text(
          rank.uname ?? "",
          style: Theme.of(context).textTheme.title,
        ),
        Text(
          rank.areaV2ParentName ?? "",
          style: Theme.of(context).textTheme.subtitle,
        ),
      ],
    );
  }

  // Rank title (e.g. crown).
  Widget _getRankAvatarView(BuildContext context, LiveRank rank) {
    double horizontal = 10.0;
    EdgeInsets edgeInsets =
        EdgeInsets.only(top: 16.0, left: horizontal, right: horizontal);
    double radius = rank.rank == 1 ? 35.0 : 30.0;

    return [1, 2, 3].contains(rank.rank)
        ? Stack(
            children: [
              Image.asset(
                  "assets/images/live_home_ranking_${rank.rank}32x32.png"),
              Container(
                margin: edgeInsets,
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      "assets/images/misc_battery_rank${rank.rank}_bg48x48.png",
                      width: radius * 2,
                      height: radius * 2,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      margin: EdgeInsets.all(2),
                      child: BiliImage(rank.face, radius: radius - 2),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                left: radius + edgeInsets.left,
                child: rank.liveStatus == 1
                    ? Image.asset(
                        "assets/images/live_home_ranking_living${Theme.of(context).brightness == Brightness.light ? "" : "night"}38x14.png",
                      )
                    : SizedBox.shrink(),
              ),
            ],
          )
        : SizedBox.shrink();
  }
}
