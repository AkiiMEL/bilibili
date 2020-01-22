import 'package:flutter/material.dart';

import 'package:tuple/tuple.dart';

import 'package:bilibili/app/compenents/bb_network_image.dart';
import 'package:bilibili/app/utils/bb_args.dart';

// Media preview contains image, tag and other extra message
// like number of visited and danmuku.
class BBMediaPreviewView extends StatelessWidget {
  final String url;

  // The view located in top left of image, if a value is given
  // the `topLeftIconAndDescriptions` will be ignored.
  final Widget topLeftView;
  final List<Tuple2<String, String>> topLeftIconAndDescriptions;

  // see `topLeftView` for more info.
  final Widget topRightView;
  final List<Tuple2<String, String>> topRightIconAndDescriptions;

  // see `topLeftView` for more info.
  final Widget bottomLeftView;
  final List<Tuple2<String, String>> bottomLeftIconAndDescriptions;

  // see `topLeftView` for more info.
  final Widget bottomRightView;
  final List<Tuple2<String, String>> bottomRightIconAndDescriptions;

  final double verticalSpacing;
  final double horizontalSpacing;

  BBMediaPreviewView(
      {this.url,
      this.topLeftView,
      this.topLeftIconAndDescriptions,
      this.topRightView,
      this.topRightIconAndDescriptions,
      this.bottomLeftView,
      this.bottomLeftIconAndDescriptions,
      this.bottomRightView,
      this.bottomRightIconAndDescriptions,
      this.horizontalSpacing = 4,
      this.verticalSpacing = 2});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        BBNetworkImage(
          url,
          placeholder: defaultIMGPlaceholderName,
        ),
        _getGridientView(height: 64.0),
        _getView(
            context, verticalSpacing, horizontalSpacing, null, null, topLeftView, topLeftIconAndDescriptions),
        _getView(context, null, horizontalSpacing, verticalSpacing, null, bottomLeftView,
            bottomLeftIconAndDescriptions),
        _getView(context, null, null, verticalSpacing, horizontalSpacing, bottomRightView,
            bottomRightIconAndDescriptions),
        _getView(context, verticalSpacing, null, null, horizontalSpacing, topRightView,
            topRightIconAndDescriptions),
      ],
    );
  }

  Widget _getView(
      BuildContext context,
      double top,
      double left,
      double bottom,
      double right,
      Widget view,
      List<Tuple2<String, String>> iconAndDescriptions) {
    return view != null
        ? Positioned(
            top: top,
            left: left,
            bottom: bottom,
            right: right,
            child: view,
          )
        : (iconAndDescriptions == null || iconAndDescriptions.isEmpty
            ? SizedBox.shrink()
            : Positioned(
                top: top,
                left: left,
                bottom: bottom,
                right: right,
                child: Row(
                  children:
                      _getIconAndDescriptionViews(context, iconAndDescriptions),
                ),
              ));
  }

  List<Widget> _getIconAndDescriptionViews(
      BuildContext context, List<Tuple2<String, String>> iconAndDescriptions) {
    List<Widget> views = [];
    iconAndDescriptions.forEach((e) {
      if (e.item1 != null && e.item1.isNotEmpty) {
        views.add(Image.asset(e.item1));
      }
      if (e.item2 != null) {
        views.add(Text(
          e.item2,
          style: TextStyle(
              color: Colors.white,
              fontSize: Theme.of(context).textTheme.display4.fontSize),
        ));
      }
    });
    return views;
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
            colors: [Colors.transparent, Colors.black26],
          ),
        ),
      ),
    );
  }
}
