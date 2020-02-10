import 'package:flutter/cupertino.dart';

class BBListViewSection extends StatelessWidget {
  final Widget headerView;
  final Widget footerView;
  final Widget body;

  BBListViewSection({this.headerView, this.body, this.footerView})
      : assert(body != null);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        headerView != null ? headerView : SizedBox.shrink(),
        body,
        footerView != null ? footerView : SizedBox.shrink(),
      ],
    );
  }
}
