import 'package:bilibili/app/models/bb_tab_models.dart';

import '../routers/bb_route_mgr.dart';

BBAppMgr _appMgr;

class BBAppMgr extends Object {
  BBTabBody tabLayout;

  factory BBAppMgr() => _getInstance();
  static BBAppMgr get shared => _getInstance();

  static BBAppMgr _getInstance() {
    if (_appMgr == null) {
      _appMgr = BBAppMgr._init();
    }
    return _appMgr;
  }

  BBAppMgr._init() {
    BBRouteMgr.setup();
  }
}
