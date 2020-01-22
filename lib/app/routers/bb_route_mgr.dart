import 'package:fluro/fluro.dart';

import 'package:bilibili/app/routers/bb_route_handlers.dart';

class Fluro {

  static String root = "/";
  static String home = "bilibili://main/home/";
  static String live = "bilibili://live/home";
  static String featured = "bilibili://pegasus/promo";
  static String popular = "bilibili://pegasus/hottopic";
  static String bangumiList = "bilibili://pgc/home";
  static String cinema = "bilibili://pgc/cinema-tab";
  static String gameCenter = "bilibili://game_center/home";
  static String message = "bilibili://link/home/im_home";
  static String channel = "bilibili://pegasus/channel/";
  static String timeline = "bilibili://following/home/";
  static String shopping = "bilibili://mall/home/";
  static String userCenter = "bilibili://user_center/";

  static setup() {
    Router.appRouter.notFoundHandler = notFoundHandler;
    Router.appRouter.define(root, handler: rootHandler);
    Router.appRouter.define(home, handler: homeHandler);
    Router.appRouter.define(live, handler: liveHandler);
    Router.appRouter.define(featured, handler: featuredHandler);
    Router.appRouter.define(popular, handler: popularHandler);
  }
}
