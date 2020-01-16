import 'dart:math';

import 'package:bilibili/compenents/bili_image.dart';
import 'package:flutter/material.dart';
import 'package:bilibili/models/bili_live_stream_models.dart';
import 'package:bilibili/utils/bili_args.dart';

class BiliLiveStreamListSectionHeaderView extends StatelessWidget {
  final ModuleInfo module;
  final String title;
  final String subtitle;
  final void Function(ModuleInfo) onTap;
  final Widget accessoryView;

  BiliLiveStreamListSectionHeaderView(
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
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 2,
                  ),
                  child: _getBottomView(item),
                ),
                _getTopView(item),
              ],
              fit: StackFit.expand,
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

// Display prize up have owned.
  Widget _getTopView(LiveStreamRoom item) {
    List<Widget> children = [];

    for (LiveStreamPendent pendent in item.pendentList ?? []) {
      if (pendent.pic == null) continue;
      if (pendent.position == 1) {
        children.add(
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: EdgeInsets.only(
                  top: 2.0), // Move down 2 pixel to align with cover image.
              child: BiliImage(
                pendent.pic,
                size: Size.fromHeight(20.0),
              ),
            ),
          ),
        );
      } else {
        children.add(
          Align(
            alignment: Alignment.topLeft,
            child: Stack(
              children: <Widget>[
                BiliImage(
                  pendent.pic,
                  size: Size.fromHeight(20.0),
                ),
                Positioned(
                  top: 3.0,
                  left: 25.0,
                  child: Text(
                    pendent.content ?? "",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }
    }
    return children.isEmpty ? SizedBox.shrink() : Stack(children: children);
  }

  // Dispaly image up uname and online.
  Widget _getBottomView(LiveStreamRoom item) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(defaultMargin.top / 2),
      child: Stack(
        children: <Widget>[
          BiliImage(
            item.cover,
            placeholder: "assets/images/bgm_category_placeholder30x30.png",
          ),
          Positioned(
            left: 0,
            bottom: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color.fromRGBO(0, 0, 0, 0), Colors.black45],
                ),
              ),
              child: Padding(
                padding: defaultMargin,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        item.uname ?? "",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                        maxLines: 1,
                      ),
                    ),
                    Image.asset("assets/images/live_bc_ico_viewer_n16x16.png"),
                    SizedBox(
                      width: defaultMargin.left,
                    ),
                    Text(
                      "${item.online}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
        fit: StackFit.expand,
      ),
    );
  }
}
