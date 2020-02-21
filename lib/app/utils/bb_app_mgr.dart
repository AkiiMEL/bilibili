import '../models/bb_tab_bar_display.dart';
import '../routers/bb_route_mgr.dart';

BBAppMgr _appMgr;

class BBAppMgr extends Object {
  TabBarDisplay tabLayout;

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
