import 'dart:math';
import 'package:bilibili/app/compenents/bb_media_thumbnail_view.dart';
import 'package:flutter/material.dart';

import 'package:bilibili/app/compenents/bb_network_image.dart';
import 'package:bilibili/app/models/bb_live_stream_models.dart';
import 'package:bilibili/app/utils/bb_args.dart';
import 'package:tuple/tuple.dart';

class BBLiveStreamListSectionHeaderView extends StatelessWidget {
  final ModuleInfo module;
  final String title;
  final String subtitle;
  final void Function(ModuleInfo) onTap;
  final Widget accessoryView;

  BBLiveStreamListSectionHeaderView(
      {this.module, this.title, this.subtitle, this.onTap, this.accessoryView});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                title ?? "",
                style: Theme.of(context).textTheme.headline,
              ),
              SizedBox(width: defaultMargin.left),
              Text(
                subtitle ?? "",
                style: Theme.of(context).textTheme.subtitle,
              ),
            ],
          ),
          GestureDetector(
            child: accessoryView ??
                Row(
                  children: <Widget>[
                    Text(
                      "查看更多",
                      style: Theme.of(context).textTheme.title,
                    ),
                    Icon(Icons.arrow_forward_ios,
                        size: Theme.of(context).textTheme.subtitle.fontSize),
                  ],
                ),
            onTap: () {
              onTap(module);
            },
          ),
        ],
      ),
    );
  }
}

class BiliLiveStreamListSectionFooterView extends StatelessWidget {
  final ModuleInfo module;
  final void Function(ModuleInfo) onTap;

  BiliLiveStreamListSectionFooterView({this.module, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          onTap(module);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "更多${module.count}个${module.title}",
              style: TextStyle(color: Colors.pink, fontSize: 14.0),
            ),
            Icon(Icons.arrow_forward_ios, size: 14.0, color: Colors.pink),
          ],
        ),
      ),
    );
  }
}

class BiliLiveStreamListPartitionView extends StatelessWidget {
  final LiveStreamSection<LiveStreamRoom> partition;

  BiliLiveStreamListPartitionView({this.partition});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: defaultMargin.top,
          crossAxisSpacing: defaultMargin.left,
          crossAxisCount: 2,
          childAspectRatio: 1.1),
      itemCount: min(4, partition.list.length),
      itemBuilder: (BuildContext contex, int index) {
        return BiliLiveStreamListPartitionItemView(
          item: partition.list[index],
        );
      },
    );
  }
}

class BiliLiveStreamListPartitionItemView extends StatelessWidget {
  final LiveStreamRoom item;

  const BiliLiveStreamListPartitionItemView({this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: BBThumbnailView(
              url: item.cover,
              borderRadius: BorderRadius.circular(5.0),
              topLeftIconAndDescriptions:
                  _pendentAtLoc(item.pendentList, 2),
              topRightIconAndDescriptions: _pendentAtLoc(item.pendentList, 1),
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
      ),
    );
  }

  List<Tuple2<dynamic, String>> _pendentAtLoc(List<LiveStreamPendent> pendents, int position) {
    LiveStreamPendent pendent = pendents?.isNotEmpty ?? false
        ? pendents.firstWhere((e) => e.pic != null && e.position == position,
            orElse: () => null)
        : null;
        return pendent != null ? [Tuple2(pendent.pic, pendent.content)] : null;
  }
}
