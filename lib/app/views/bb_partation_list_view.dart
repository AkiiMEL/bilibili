import 'package:bilibili/app/api/bb_api.dart';
import 'package:bilibili/app/compenents/bb_network_image.dart';
import 'package:bilibili/app/utils/bb_common.dart';
import 'package:flutter/material.dart';

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
          mainAxisSpacing: defaultMargin.bottom,
          crossAxisSpacing: defaultMargin.left,
        ),
        itemBuilder: (BuildContext context, int index) {
          Partation partation = _partations[index];
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              BBNetworkImage(partation.logo, size: Size(40.0, 40.0),),
              SizedBox(height: defaultMargin.bottom / 2),
              Text(partation.name ?? "", style: Theme.of(context).textTheme.caption,),
            ],
          );
        },
        itemCount: _partations.length,
      ),
    );
  }

  _onLoading() async {
    HttpListBody<Partation> p = await BBApi.requestAllPartion();
    _partations = p?.data?.toList() ?? [];
    print(_partations);
    print(p);
  }
}
