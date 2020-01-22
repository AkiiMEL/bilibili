import 'package:bilibili/models/bili_live_models.dart';
import 'package:bilibili/utils/bili_args.dart';
import 'package:flutter/material.dart';

class BiliLiveListAreaSectionView extends StatelessWidget {
  final LiveSection<LiveAreaEntrance> areas;

  BiliLiveListAreaSectionView({this.areas});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: spacing),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            childAspectRatio: 0.76,
            crossAxisSpacing: spacing * 2,
            mainAxisSpacing: spacing),
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
