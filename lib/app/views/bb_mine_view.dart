import 'package:flutter/material.dart';

import 'package:bilibili/app/api/bb_api.dart';
import 'package:bilibili/app/utils/bb_common.dart';
import 'package:bilibili/app/compenents/bb_network_image.dart';
import 'package:bilibili/app/models/bb_classified_services.dart';
import 'package:bilibili/app/models/bb_service.dart';
import 'package:bilibili/app/views/bb_mine_header_view.dart';

class BBMineView extends StatefulWidget {
  @override
  _BBMineViewState createState() => _BBMineViewState();
}

class _BBMineViewState extends State<BBMineView> {
  Mine _mine;

  @override
  void initState() {
    super.initState();
    _onLoading();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          children: <Widget>[
            BBMineHeaderView(mine: _mine),
            Expanded(
              child: CustomScrollView(
                slivers: _mine?.sections
                        ?.toList()
                        ?.map((services) => <Widget>[
                              _sliverSectionHeader(context, services),
                              _sliverGrid(services.items.toList()),
                              SliverToBoxAdapter(
                                child: services != _mine.sections.toList().last
                                    ? Container(
                                        height: defaultMargin.bottom,
                                        color:
                                            Theme.of(context).backgroundColor,
                                      )
                                    : SizedBox.shrink(),
                              )
                            ])
                        ?.expand((sliver) => sliver)
                        ?.toList() ??
                    [],
              ),
            )
          ],
        ),
    );
  }

  Widget _sliverSectionHeader(
      BuildContext context, ClassifiedServices services) {
    return SliverToBoxAdapter(
      child: Column(
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(minHeight: 44.0),
            child: Container(
              padding: defaultMargin,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(services.title ?? "",
                      style: Theme.of(context).textTheme.headline),
                  // Creative center need a post button to support user contribution.
                  services.type == 1 && _mine?.showCreative == 1
                      ? GestureDetector(
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                top: 0.0,
                                right: 0.0,
                                width: 9,
                                height: 9,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.white),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: defaultMargin.left * 1.5,
                                    vertical: defaultMargin.bottom / 2),
                                margin: EdgeInsets.all(4.0),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Theme.of(context).accentColor),
                                  borderRadius: BorderRadius.circular(3.0),
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Image.asset(Images.mineUploadDraft),
                                    SizedBox(width: defaultMargin.left / 2),
                                    Text(
                                      "投稿",
                                      style: Theme.of(context)
                                          .textTheme
                                          .title
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .accentColor),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          onTap: () {
                            print("CONTRIBUTION !!!");
                          },
                        )
                      : SizedBox.shrink(),
                ],
              ),
            ),
          ),
          Divider(),
        ],
      ),
    );
  }

  Widget _sliverGrid(List<Service> services) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: defaultMargin.left),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Spacer(),
                Stack(
                  // alignment: Alignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: 30.0),
                        child: BBNetworkImage(
                          services[index].icon,
                          aspectRatio: 1.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    _dot(services[index]),
                  ],
                ),
                SizedBox(height: defaultMargin.bottom),
                Text(
                  services[index].title ?? "",
                  style: Theme.of(context).textTheme.caption,
                ),
                Spacer(),
              ],
            );
          },
          childCount: services?.length ?? 0,
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ),
      ),
    );
  }

  Widget _dot(Service service) {
    return service.redDot != null
        ? Positioned(
            top: 3,
            right: 0,
            width: 13,
            height: 13,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white),
              ),
              child: Center(
                  child: Text(
                "${service.redDot}",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.0,
                  decoration: TextDecoration.none,
                ),
              )),
            ),
          )
        : SizedBox.shrink();
  }

  void _onLoading() async {
    HttpBody<Mine> httpBody = await BBApi.requestMine();

    if (mounted) {
      setState(() {
        _mine = httpBody?.data;
      });
    }
  }
}
