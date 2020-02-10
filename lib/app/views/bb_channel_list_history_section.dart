import 'package:bilibili/app/utils/bb_args.dart';
import 'package:flutter/material.dart';

class BBChannelListHistorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: defaultMargin.copyWith(bottom: 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("最近看过的频道", style: Theme.of(context).textTheme.title),
          Container(
            height: 160.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return AspectRatio(
                  aspectRatio: 0.7,
                  child: Container(
                    margin: defaultMargin.copyWith(
                        right: index == 4 ? defaultMargin.right : 0),
                    decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[200],
                          blurRadius: defaultMargin.bottom,
                          offset: Offset(0, 4),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Stack(
                      children: <Widget>[],
                    ),
                  ),
                );
              },
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
