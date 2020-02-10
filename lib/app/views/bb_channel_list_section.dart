import 'package:bilibili/app/compenents/bb_media_preview_view.dart';
import 'package:bilibili/app/utils/bb_args.dart';
import 'package:flutter/material.dart';

class BBChannelListSection extends StatefulWidget {
  @override
  _BBChannelListSectionState createState() => _BBChannelListSectionState();
}

class _BBChannelListSectionState extends State<BBChannelListSection> {
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
                    Text("Re：从零开始的异世界生活",
                        style: textTheme.headline, maxLines: 1,),
                    Text("刚刚更新", style: textTheme.display4),
                  ],
                ),
              ),
              GestureDetector(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: defaultMargin.left * 2,
                    vertical: defaultMargin.top / 4,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Theme.of(context).accentColor),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Center(
                    child: Text(
                      "+5个优质视频",
                      style: textTheme.subtitle
                          .copyWith(color: Theme.of(context).accentColor),
                    ),
                  ),
                ),
              )
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
              return Column(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 16.0 / 9.0,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: BBMediaPreviewView()),
                  ),
                  SizedBox(height: defaultMargin.bottom),
                  Expanded(
                    child: Center(
                      child: Text(
                        "【AMV•2020雷姆生贺】誓愿守候此生梦醒，从零开始笑迎未来",
                        style: textTheme.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              );
            },
            itemCount: 2,
          ),
          Text(
            "精选视频184个 >",
            style: textTheme.display4,
          ),
        ],
      ),
    );
  }
}
