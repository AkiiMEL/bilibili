import 'package:flutter/material.dart';

import '../utils/bb_args.dart';
import '../utils/bb_utils.dart';
import '../api/bb_api.dart';
import '../compenents/bb_ui.dart';
import '../models/bb_http_body.dart';
import '../models/bb_partation.dart';

class BBPartationListView extends StatefulWidget {
  @override
  _BBPartationListViewState createState() => _BBPartationListViewState();
}

class _BBPartationListViewState extends State<BBPartationListView> {
  List<Partation> _partations;

  @override
  void initState() {
    super.initState();
    _partations = [];
    _onLoading();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: GridView.builder(
        padding: defaultMargin,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: defaultMargin.bottom * 2,
          crossAxisSpacing: defaultMargin.left,
          childAspectRatio: 1.3,
        ),
        itemBuilder: (BuildContext context, int index) {
          Partation partation = _partations[index];
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: AspectRatio(
                  aspectRatio: 1,
                  child: BBNetworkImage(
                    partation.logo,
                  ),
                ),
              ),
              SizedBox(height: defaultMargin.bottom / 2),
              Text(
                partation.name ?? "",
                style: Theme.of(context).textTheme.caption,
              ),
            ],
          );
        },
        itemCount: _partations.length,
      ),
    );
  }

  void _onLoading() async {
    HttpListBody<Partation> p = await BBApi.requestAllPartion();

    if (mounted) {
      setState(() {
        _partations = p?.data?.toList() ?? [];
      });
    }
  }
}
