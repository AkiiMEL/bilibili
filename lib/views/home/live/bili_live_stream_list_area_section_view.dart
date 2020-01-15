import 'package:bilibili/models/bili_live_stream_models.dart';
import 'package:bilibili/utils/bili_args.dart';
import 'package:flutter/material.dart';

class BiliLiveStreamListAreaSectionView extends StatelessWidget {
  final LiveStreamSection<LiveStreamAreaEntrance> areas;

  BiliLiveStreamListAreaSectionView({this.areas});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: defaultMargin.left),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            childAspectRatio: 0.76,
            crossAxisSpacing: defaultMargin.left * 2,
            mainAxisSpacing: defaultMargin.top),
        itemCount: areas.list.length,
        itemBuilder: (context, i) {
          return Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 1.0,
                child: Image.network(
                  areas.list[i].pic,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                areas.list[i].title,
                style: TextStyle(fontSize: 12),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          );
        },
      ),
    );
  }
}
