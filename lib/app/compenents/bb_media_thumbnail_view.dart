import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

import 'package:bilibili/app/utils/bb_common.dart';
import 'package:bilibili/app/compenents/bb_network_image.dart';

// Media preview contains image, tag and other extra message
// like number of visited and danmuku.
class BBThumbnailView extends StatelessWidget {
  final String url;

  // The view located in top left of image, if the value is not null
  // `topLeftIconAndDescriptions` will be ignored.
  final Widget topLeftView;

  // The icon and icon description, icon maybe index of local images
  // set see `_imageURLs` for more information, or network image url.
  final List<Tuple2<dynamic, String>> topLeftIconAndDescriptions;

  // see `topLeftView` for more info.
  final Widget topRightView;
  final List<Tuple2<dynamic, String>> topRightIconAndDescriptions;

  // see `topLeftView` for more info.
  final Widget bottomLeftView;
  final List<Tuple2<dynamic, String>> bottomLeftIconAndDescriptions;

  // see `topLeftView` for more info.
  final Widget bottomRightView;
  final List<Tuple2<dynamic, String>> bottomRightIconAndDescriptions;

  final Color foregroundColor;
  final Color backgroundColor;
  final BorderRadius borderRadius;

  final EdgeInsets _edgeInsets = EdgeInsets.fromLTRB(4.0, 2.0, 4.0, 4.0);

  BBThumbnailView(
      {this.url,
      this.topLeftView,
      this.topLeftIconAndDescriptions,
      this.topRightView,
      this.topRightIconAndDescriptions,
      this.bottomLeftView,
      this.bottomLeftIconAndDescriptions,
      this.bottomRightView,
      this.bottomRightIconAndDescriptions,
      this.foregroundColor,
      this.backgroundColor,
      this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: _edgeInsets.top),
          child: Container(
            foregroundDecoration: BoxDecoration(
              color: foregroundColor,
            ),
            decoration: BoxDecoration(
                color: backgroundColor, borderRadius: borderRadius),
            clipBehavior: borderRadius != null ? Clip.antiAlias : Clip.none,
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                BBNetworkImage(
                  url,
                  placeholder: Images.placeholder,
                ),
                _getGridientView(height: 34.0),
                _getBottomView(context),
                _getTopRightView(),
              ],
            ),
          ),
        ),
        ClipRRect(
            borderRadius: borderRadius == null || borderRadius.topLeft == null
                ? null
                : BorderRadius.only(topLeft: borderRadius.topLeft),
            child: _getTopLeftView()),
      ],
    );
  }

  Widget _getGridientView({double height}) {
    return Positioned(
      left: 0.0,
      bottom: 0.0,
      right: 0.0,
      child: Container(
        height: height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.transparent, Colors.black38],
          ),
        ),
      ),
    );
  }

  Widget _getTopLeftView() {
    return topLeftView != null
        ? Padding(
            padding: EdgeInsets.only(top: _edgeInsets.top),
            child: topLeftView,
          )
        : SizedBox(
            height: 20.0,
            child: (topLeftIconAndDescriptions == null ||
                    topLeftIconAndDescriptions.isEmpty
                ? SizedBox.shrink()
                : Stack(children: <Widget>[
                    BBNetworkImage(topLeftIconAndDescriptions.first.item1),
                    Positioned(
                      top: 3.0,
                      left: 25.0,
                      child: Text(
                        topLeftIconAndDescriptions.first.item2 ?? "",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.5,
                          fontWeight: FontWeight.normal,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ])),
          );
  }

  Widget _getTopRightView() {
    return Positioned(
      top: 0.0,
      right: 0.0,
      child: topRightView ??
          SizedBox(
            height: 20.0,
            child: topRightIconAndDescriptions == null ||
                    topRightIconAndDescriptions.isEmpty
                ? SizedBox.shrink()
                : BBNetworkImage(topRightIconAndDescriptions.first.item1),
          ),
    );
  }

  Widget _getBottomView(BuildContext context) {
    return Positioned(
      left: 0.0,
      bottom: 0.0,
      right: 0.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _getBottomLeftView(context),
          _getBottomRightView(context),
        ],
      ),
    );
  }

  Widget _getBottomLeftView(BuildContext context) {
    return bottomLeftView ??
        Padding(
          padding: EdgeInsets.only(
              left: _edgeInsets.left, bottom: _edgeInsets.bottom),
          child: Row(
            children: bottomLeftView != null
                ? [bottomLeftView]
                : _getIconAndDescriptionViews(
                    context, bottomLeftIconAndDescriptions),
          ),
        );
  }

  Widget _getBottomRightView(BuildContext context) {
    return bottomRightView ??
        Padding(
          padding: EdgeInsets.only(
              right: _edgeInsets.right, bottom: _edgeInsets.bottom),
          child: Row(
            children: bottomRightView != null
                ? [bottomRightView]
                : _getIconAndDescriptionViews(
                    context, bottomRightIconAndDescriptions),
          ),
        );
  }

  List<Widget> _getIconAndDescriptionViews(
      BuildContext context, List<Tuple2<dynamic, String>> iconAndDescriptions) {
    List<Widget> views = [];
    (iconAndDescriptions ?? []).forEach((e) {
      if (e.item1 is int && e.item1 >= 0 && e.item1 < Images.thumbnailOverlays.length) {
        views.add(Image.asset(
          Images.thumbnailOverlays[e.item1],
          color: Colors.white,
        ));
        views.add(SizedBox(width: 2.0));
      }

      if (e.item1 is String && (e.item1 as String).isNotEmpty) {
        views.add(BBNetworkImage(e.item1));
      }

      if (e.item2 != null) {
        views.add(Text(
          e.item2,
          style: TextStyle(
            color: Colors.white,
            fontSize: 10.5,
            fontWeight: FontWeight.normal,
            decoration: TextDecoration.none,
          ),
        ));
        views.add(SizedBox(
          width: 8.0,
        ));
      }
    });
    if (views.isNotEmpty && views.last is SizedBox) {
      views.removeLast();
    }
    return views;
  }
}
