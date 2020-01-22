import 'package:bilibili/utils/bili_args.dart';
import 'package:flutter/material.dart';

class Bili extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 4.0 / 3.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(spacing),
                  child: Image.network(
                    "c",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  margin: EdgeInsets.all(spacing),
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: spacing, vertical: spacing / 2),
                    child: Text(
                      "番剧",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  margin: EdgeInsets.all(spacing),
                  child: Row(
                    children: <Widget>[
                      Text("data"),
                      SizedBox(
                        width: spacing,
                      ),
                      Text("data"),
                      SizedBox(
                        width: spacing,
                      ),
                      Text("data"),
                    ],
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.pinkAccent,
                radius: 14.0,
              ),
              SizedBox(width: spacing,),
              Text("data", maxLines: 2,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 44.0),
                child: Text("data"),
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(left: 28.0 + spacing),
              child: Text("data"),
            ),
          ),
        ],
      ),
    );
  }
}
