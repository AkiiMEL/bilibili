
import 'package:bilibili/app/routers/bb_route_mgr.dart';

BBAppMgr _appMgr;

class BBAppMgr extends Object {

  factory BBAppMgr() => _getInstance();
  static BBAppMgr get shared => _getInstance();

  static BBAppMgr _getInstance() {
    if (_appMgr == null) {
      _appMgr = BBAppMgr.init();
    }
    return _appMgr;
  }

  BBAppMgr.init() {
    BBRouteMgr.setup();
  }
}
