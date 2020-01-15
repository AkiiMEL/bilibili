import 'package:bilibili/models/bili_live_stream_models.dart';
import 'package:bilibili/utils/bili_args.dart';
import 'package:bilibili/widgets/bili_image.dart';
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
                child: BiliImage(
                  areas.list[i].pic,
                  placeholder: "assets/images/default_img33x31.png",
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
