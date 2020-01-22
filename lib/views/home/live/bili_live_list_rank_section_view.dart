import 'package:flutter/material.dart';

import 'package:bilibili/models/bili_live_models.dart';
import 'package:bilibili/utils/bili_args.dart';

class BiliLiveRankSectionView extends StatelessWidget {
  final LiveSection<LiveRank> section;

  BiliLiveRankSectionView({this.section});

  @override
  Widget build(BuildContext context) {
    // Fix sort order with 2 1 3;
    LiveRank goldMedal = section.list?.firstWhere((e) => e.rank == 1, orElse: () => null);
    LiveRank silverMedal = section.list?.firstWhere((e) => e.rank == 2, orElse: () => null);
    LiveRank bronzeMedal = section.list?.firstWhere((e) => e.rank == 3, orElse: () => null);

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

    return models == null ? SizedBox.shrink() : Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Center(
        child: Wrap(
          spacing: 44.0,
          crossAxisAlignment: WrapCrossAlignment.end,
          // mainAxisAlignment: MainAxisAlignment.center,
          //   crossAxisAlignment: CrossAxisAlignment.end,
          children: models.map((e) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage(e.face ?? ""),
                      radius: e.rank == 1 ? 34.0 : 28.0,
                    ),
                    Positioned(
                      left: e.rank == 1 ? 35.0 : 29.0,
                      bottom: 0.0,
                      child: Container(
                        height: 28.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.pink[300],),
                          borderRadius: BorderRadius.circular(9.0),
                        ),
                        child: Text(e.liveStatus == 1 ? "直播中" : "", textAlign: TextAlign.center,),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: spacing / 2,
                ),
                Text(
                  e.uname ?? "",
                  style: TextStyle(fontSize: 14.0),
                ),
                Text(
                  e.areaV2ParentName ?? "",
                  style: TextStyle(color: Colors.grey[600], fontSize: 12.0),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget _rankImage() {
    return Stack(
      children: <Widget>[
// live_home_ranking_{1, 2, 3}32x32
      ],
    );
  }
}
