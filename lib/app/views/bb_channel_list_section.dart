import 'dart:math';
import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

import '../compenents/bb_media_thumbnail_view.dart';
import '../utils/bb_args.dart';
import '../models/bb_channel.dart';

class BBChannelListSection extends StatelessWidget {
  final Channel channel;
  BBChannelListSection({this.channel});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: defaultMargin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      channel.title ?? channel.name ?? "",
                      style: textTheme.headline,
                      maxLines: 1,
                    ),
                    Text(channel.desc1 ?? "", style: textTheme.display4),
                  ],
                ),
              ),
              channel.descButton?.text != null
                  ? GestureDetector(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: defaultMargin.left * 2,
                          vertical: defaultMargin.top / 4,
                        ),
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Theme.of(context).accentColor),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Center(
                          child: Text(
                            channel.descButton.text,
                            style: textTheme.subtitle
                                .copyWith(color: Theme.of(context).accentColor),
                          ),
                        ),
                      ),
                    )
                  : SizedBox.shrink(),
            ],
          ),
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(vertical: defaultMargin.bottom),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: defaultMargin.left,
              childAspectRatio: 16 / 14,
            ),
            itemBuilder: (BuildContext context, int index) {
              Media media = channel.items[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 16.0 / 9.0,
                    child: BBThumbnailView(
                      url: media.cover,
                      topLeftIconAndDescriptions: [
                        Tuple2(media.badge?.imageUrl, media.badge?.text),
                      ],
                      bottomLeftIconAndDescriptions: [
                        Tuple2(media.coverLeftIcon1, media.coverLeftText1),
                        Tuple2(media.coverLeftIcon2, media.coverLeftText2),
                      ],
                      bottomRightIconAndDescriptions: [
                        Tuple2(null, media.coverLeftText3),
                      ],
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  SizedBox(height: defaultMargin.bottom),
                  Expanded(
                    child: Text(
                      media.title ?? "",
                      style: textTheme.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              );
            },
            itemCount: min(channel.items?.length ?? 0, 2),
          ),
          channel.descButton2?.text != null
              ? Text(
                  channel.descButton2.text,
                  style: textTheme.display4,
                )
              : SizedBox.shrink(),
        ],
      ),
    );
  }
}
