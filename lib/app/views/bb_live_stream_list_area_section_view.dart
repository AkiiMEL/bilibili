import 'package:flutter/material.dart';

import 'package:bilibili/app/models/bb_live_stream_models.dart';
import 'package:bilibili/app/utils/bb_common.dart';
import 'package:bilibili/app/compenents/bb_network_image.dart';

class BBLiveStreamListAreaSectionView extends StatelessWidget {
  final LiveStreamSection<LiveStreamAreaEntrance> areas;

  BBLiveStreamListAreaSectionView({this.areas});

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
                child: BBNetworkImage(
                  areas.list[i].pic,
                  placeholder: Images.placeholder,
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
