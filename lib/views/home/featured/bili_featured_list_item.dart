import 'package:bilibili/models/bili_featured_models.dart';
import 'package:bilibili/utils/bili_args.dart';
import 'package:bilibili/utils/bili_utils.dart';
import 'package:bilibili/widgets/bili_image.dart';
import 'package:flutter/material.dart';

class _BiliFeaturedBoxItem extends StatelessWidget {
  final Widget child;

  _BiliFeaturedBoxItem({this.child});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(defaultMargin.top),
      child: Container(
        color: Colors.white,
        child: child,
      ),
    );
  }
}

class BiliFeaturedListMultipleColumItem extends StatelessWidget {
  final Media media;
  BiliFeaturedListMultipleColumItem({this.media});

  @override
  Widget build(BuildContext context) {
    return _BiliFeaturedBoxItem(
      child: Column(
        children: <Widget>[
          _getPreviewView(context, media),
          _getPreviewDescriptionView(context, media),
        ],
      ),
    );
  }

  // Media preview contains image, tag and other extra message
  // like number of visited and danmuku.
  Widget _getPreviewView(BuildContext context, Media media) {
    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 16 / 9.0,
          child: BiliImage(media.cover),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: _getPreviewExtraMsgView(context, media),
        ),
      ],
    );
  }

  // Media tag.
  Widget _getTagView(BuildContext context, TextAttributes textAttributes) {
    return textAttributes == null ||
            textAttributes.text == null ||
            textAttributes.text.isEmpty
        ? SizedBox.shrink()
        : Container(
            margin: EdgeInsets.only(right: defaultMargin.right),
            decoration: BoxDecoration(
              color: BiliColor.from(
                  Theme.of(context).brightness == Brightness.light
                      ? textAttributes?.bgColor
                      : media.rcmdReasonStyle?.bgColorNight),
              border: Border.all(
                color: BiliColor.from(
                        Theme.of(context).brightness == Brightness.light
                            ? textAttributes.borderColor
                            : textAttributes.borderColorNight) ??
                    Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(2),
            ),
            padding: EdgeInsets.symmetric(horizontal: 1),
            child: Center(
              child: Text(
                textAttributes.text,
                style: Theme.of(context).textTheme.display4.copyWith(
                      color: BiliColor.from(
                              Theme.of(context).brightness == Brightness.light
                                  ? textAttributes.textColor
                                  : textAttributes.textColorNight) ??
                          Colors.white,
                    ),
              ),
            ),
          );
  }

  // Preview extra message display view contains extra msg
  // like danmuku number and others.
  Widget _getPreviewExtraMsgView(BuildContext context, Media media) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.transparent, Colors.black26],
        ),
      ),
      child: Padding(
        padding: (defaultMargin / 2).copyWith(top: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                _getPreviewExtraMsgIndicatorView(
                    context, media.coverLeftText1, media.coverLeftIcon1),
                SizedBox(width: defaultMargin.left),
                _getPreviewExtraMsgIndicatorView(
                    context, media.coverLeftText2, media.coverLeftIcon2),
              ],
            ),
            _getPreviewExtraMsgIndicatorView(context, media.coverRightText, null),
          ],
        ),
      ),
    );
  }

  Widget _getPreviewExtraMsgIndicatorView(
      BuildContext context, String text, int index) {
    List<String> icons = [
      "pegasus_card_ic_star16x16.png",
      "pegasus_card_ic_play16x16.png",
      "pegasus_card_ic_location16x16.png",
      "pegasus_card_ic_danmaku16x16.png",
      "pegasus_card_ic_follow16x16.png",
      "pegasus_card_ic_article16x16.png",
      "pegasus_card_ic_comment16x16.png",
      "pegasus_card_ic_like16x16.png",
      "pegasus_card_ic_liked16x16.png",
      "pegasus_card_ic_people16x16.png",
    ];
    return index != null && index < icons.length
        ? Row(
            children: <Widget>[
              Image.asset(
                "assets/images/${icons[index]}",
                color: Colors.white,
              ),
              SizedBox(width: 3),
              Text(
                media.coverLeftText1 ?? "-",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: Theme.of(context).textTheme.display4.fontSize),
              ),
            ],
          )
        : text != null
            ? Text(
                text ?? "-",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: Theme.of(context).textTheme.display4.fontSize),
              )
            : SizedBox.shrink();
  }

  Widget _getPreviewDescriptionView(BuildContext context, Media media) {
    return Container(
      height: 70.0,
      margin: defaultMargin,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            media.title ?? "",
            maxLines: 2,
            style: Theme.of(context).textTheme.title,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _getTagView(context, media.rcmdReasonStyle),
              _getTagView(context, media.badgeStyle),
              Expanded(
                child: Text(media.descButton?.text ?? "",
                    maxLines: 1, style: Theme.of(context).textTheme.subtitle),
              ),
              SizedBox(
                width: defaultMargin.left / 2,
              ),
              GestureDetector(
                child: Image.asset(
                    "assets/images/pegasus_card_vertical_more16x16.png"),
                onTap: () {
                  print("Accessory action triggle.");
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BiliFeaturedListMultipleColumCollectionItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _BiliFeaturedBoxItem(
      child: Container(),
    );
  }
}

class BiliFeaturedListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        // color: ,
        );
  }
}
