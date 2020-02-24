import 'package:flutter/cupertino.dart';
import 'package:tuple/tuple.dart';
import 'package:flutter/material.dart';

import '../utils/bb_args.dart';
import '../utils/bb_utils.dart';
import '../routers/bb_route_mgr.dart';
import '../compenents/bb_navigation_link.dart';
import '../compenents/bb_ui.dart';
import '../models/bb_room.dart';
import '../models/bb_live_pendent.dart';

class BBLiveHomeCardView extends StatelessWidget {
  final Room item;
  final bool showAvatar;
  const BBLiveHomeCardView({this.item, this.showAvatar = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        AspectRatio(
          aspectRatio: 16 / 9,
          child: BBThumbnailView(
            url: item.cover,
            borderRadius: BorderRadius.circular(5.0),
            topLeftIconAndDescriptions: _pendent(item.pendentList?.toList(), 2),
            topRightIconAndDescriptions:
                _pendent(item.pendentList?.toList(), 1),
            bottomLeftIconAndDescriptions: [
              Tuple2(null, item.uname),
            ],
            bottomRightIconAndDescriptions: [
              Tuple2(9, "${item.online}"),
            ],
          ),
        ),
        SizedBox(height: defaultMargin.bottom),
        Expanded(
          child: showAvatar
              ? Row(
                  children: <Widget>[
                    BBNetworkCircleAvatarImage(
                      item.face,
                      radius: 18.0,
                      extra: item.officialVerify == 1 ? Image.asset(Images.officialVerify) : null,
                    ),
                    SizedBox(width: defaultMargin.left),
                    Expanded(
                      child: _textLayoutView(context),
                    ),
                  ],
                )
              : _textLayoutView(context),
        ),
      ],
    );
  }

  Widget _textLayoutView(BuildContext context) {
    return Column(
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
    );
  }

  List<Tuple2<dynamic, String>> _pendent(
      List<LivePendent> pendents, int position) {
    LivePendent pendent = pendents?.isNotEmpty ?? false
        ? pendents.firstWhere((e) => e.pic != null && e.position == position,
            orElse: () => null)
        : null;
    return pendent != null ? [Tuple2(pendent.pic, pendent.content)] : null;
  }
}
