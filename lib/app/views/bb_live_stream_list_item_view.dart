import 'package:flutter/cupertino.dart';
import 'package:tuple/tuple.dart';
import 'package:flutter/material.dart';

import '../utils/bb_args.dart';
import '../routers/bb_route_mgr.dart';
import '../compenents/bb_navigation_link.dart';
import '../compenents/bb_media_thumbnail_view.dart';
import '../models/bb_room.dart';
import '../models/bb_live_pendent.dart';

class BBLiveStreamListItemView extends StatelessWidget {
  final Room item;

  const BBLiveStreamListItemView({this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: BBThumbnailView(
            url: item.cover,
            borderRadius: BorderRadius.circular(5.0),
            topLeftIconAndDescriptions: _pendentAtLoc(item.pendentList?.toList(), 2),
            topRightIconAndDescriptions: _pendentAtLoc(item.pendentList?.toList(), 1),
            bottomLeftIconAndDescriptions: [
              Tuple2(null, item.uname),
            ],
            bottomRightIconAndDescriptions: [
              Tuple2(9, "${item.online}"),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: defaultMargin.top),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                item.title ?? "",
                style: Theme.of(context).textTheme.title,
                maxLines: 1,
              ),
              Text(
                item.areaV2Name ?? "",
                style: Theme.of(context).textTheme.subtitle,
              ),
            ],
          ),
        ),
      ],
    );
  }

  List<Tuple2<dynamic, String>> _pendentAtLoc(
      List<LivePendent> pendents, int position) {
    LivePendent pendent = pendents?.isNotEmpty ?? false
        ? pendents.firstWhere((e) => e.pic != null && e.position == position,
            orElse: () => null)
        : null;
    return pendent != null ? [Tuple2(pendent.pic, pendent.content)] : null;
  }
}
