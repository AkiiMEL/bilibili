import 'package:bilibili/utils/bili_args.dart';
import 'package:bilibili/widgets/bili_image.dart';
import 'package:flutter/material.dart';

class _BiliFeaturedBoxItem extends StatelessWidget {
  final Widget child;

  _BiliFeaturedBoxItem({this.child});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(spacing),
      child: Container(
        color: Colors.white,
        child: child,
      ),
    );
  }
}

class BiliFeaturedListMultipleColumItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _BiliFeaturedBoxItem(
      child: Column(
        children: <Widget>[
          _getPreviewView(context),
          _getPreviewMsgView(context),
        ],
      ),
    );
  }

  // Media preview contains image, tag and other extra message
  // like number of visited and danmuku.
  Widget _getPreviewView(BuildContext context) {
    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 16 / 9.0,
          // TODO: - Replace with real image.
          child: BiliImage(
              "http://i2.hdslb.com/bfs/archive/187e87681bb09af2f54b1245b89d72317e70a40f.jpg@320w_200h.jpg"),
        ),
        Align(
          alignment: Alignment.topRight,
          child: _getBangumiTagView(context),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: _getPreviewExtraMsgView(context),
        ),
      ],
    );
  }

  // Media tag.
  Widget _getBangumiTagView(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: spacing / 2, right: spacing / 2),
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: spacing, vertical: spacing / 4),
        child: Text(
          "番剧",
          style: TextStyle(
              color: Colors.white,
              fontSize: Theme.of(context).textTheme.display4.fontSize),
        ),
      ),
    );
  }

  // Preview extra message display view contains extra msg
  // like danmuku number and others.
  Widget _getPreviewExtraMsgView(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.transparent, Colors.black26],
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
            top: 20.0,
            left: spacing / 2,
            bottom: spacing / 2,
            right: spacing / 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Image.asset("assets/images/bm_home_videoPlay16x16.png"),
                SizedBox(width: 3),
                Text(
                  "293.1万",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10.0,
                  ),
                ),
                SizedBox(width: spacing * 1.5),
                Image.asset("assets/images/bm_home_videoDanmu16x16.png"),
                SizedBox(width: 3),
                Text(
                  "4522",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10.0,
                  ),
                ),
              ],
            ),
            Text(
              "4:22",
              style: TextStyle(
                color: Colors.white,
                fontSize: 10.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getPreviewMsgView(BuildContext context) {
    return Container(
      height: 60.0,
      margin: EdgeInsets.all(spacing),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "路人女主的养成方法：第0话 爱与青春的杀必死回",
            maxLines: 2,
            style: Theme.of(context).textTheme.title,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("data"),
              GestureDetector(
                child: Image.asset("assets/images/allvideo_more3x13.png"),
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
    return _BiliFeaturedBoxItem(child: Container(),);
  }
}

class BiliFeaturedListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}