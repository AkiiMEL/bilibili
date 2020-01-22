import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bilibili/models/bili_live_models.dart';
import 'package:bilibili/utils/bili_args.dart';

class BiliLiveListSectionHeaderView extends StatelessWidget {
  final ModuleInfo module;
  final String title;
  final String subtitle;
  final void Function(ModuleInfo) onTap;
  final Widget accessoryView;

  BiliLiveListSectionHeaderView(
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
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: spacing),
              Text(
                subtitle ?? "",
                style: TextStyle(color: Colors.grey[600], fontSize: 12.0),
              ),
            ],
          ),
          GestureDetector(
            child: accessoryView ??
                Row(
                  children: <Widget>[
                    Text(
                      "查看更多",
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, size: 14.0),
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

class BiliLiveListSectionFooterView extends StatelessWidget {
  final ModuleInfo module;
  final void Function(ModuleInfo) onTap;

  BiliLiveListSectionFooterView({this.module, this.onTap});

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

class BiliLiveListPartitionView extends StatelessWidget {
  final LiveSection<LiveRoom> partition;

  BiliLiveListPartitionView({this.partition});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: spacing,
          crossAxisSpacing: spacing,
          crossAxisCount: 2,
          childAspectRatio: 1.1),
      itemCount: min(4, partition.list.length),
      itemBuilder: (BuildContext contex, int index) {
        return BiliLiveListPartitionItemView(
          item: partition.list[index],
        );
      },
    );
  }
}

class BiliLiveListPartitionItemView extends StatelessWidget {
  final LiveRoom item;

  const BiliLiveListPartitionItemView({this.item});

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
            padding: EdgeInsets.symmetric(vertical: spacing),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  item.title ?? "",
                  style: TextStyle(fontSize: 14),
                  maxLines: 1,
                ),
                Text(
                  item.areaV2Name ?? "",
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


// Display prize up have owned.
  Widget _getTopView(LiveRoom item) {
    List<Widget> children = [];

    for (LivePendent pendent in item.pendentList ?? []) {
      if (pendent.pic == null) continue;
      if (pendent.position == 1) {
        children.add(
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: EdgeInsets.only(top: 2.0),// Move down 2 pixel to align with cover image.
              child: CachedNetworkImage(
                imageUrl: pendent.pic,
                errorWidget: (context, url, e) => SizedBox.shrink(),
                height: 20.0,
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
                CachedNetworkImage(
                  imageUrl: pendent.pic,
                  errorWidget: (context, url, e) => SizedBox.shrink(),
                  height: 20.0,
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
  Widget _getBottomView(LiveRoom item) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(spacing / 2),
      child: Stack(
        children: <Widget>[
          CachedNetworkImage(
            imageUrl: item.cover,
            placeholder: (context, url) =>
                Image.asset("assets/images/bgm_category_placeholder30x30.png"),
            errorWidget: (context, url, e) =>
                Image.asset("assets/images/bgm_category_placeholder30x30.png"),
                fit: BoxFit.cover,
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
                padding: EdgeInsets.symmetric(
                  horizontal: spacing,
                  vertical: spacing,
                ),
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
                      width: spacing,
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
