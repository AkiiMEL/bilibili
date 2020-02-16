import 'package:flutter/cupertino.dart';

class BBNavigationView extends StatefulWidget {
  /// Creates the content area for a tab in a [CupertinoTabScaffold].
  const BBNavigationView({
    Key key,
    this.navigatorKey,
    this.rootRouteName,
    this.onGenerateRoute,
    this.onUnknownRoute,
    this.navigatorObservers = const <NavigatorObserver>[],
  }) : assert(navigatorObservers != null),
       super(key: key);

  /// A key to use when building this widget's [Navigator].
  ///
  /// If a [navigatorKey] is specified, the [Navigator] can be directly
  /// manipulated without first obtaining it from a [BuildContext] via
  /// [Navigator.of]: from the [navigatorKey], use the [GlobalKey.currentState]
  /// getter.
  ///
  /// If this is changed, a new [Navigator] will be created, losing all the
  /// tab's state in the process; in that case, the [navigatorObservers]
  /// must also be changed, since the previous observers will be attached to the
  /// previous navigator.
  final GlobalKey<NavigatorState> navigatorKey;

  /// The title of the default route.
  final String rootRouteName;

  /// The route generator callback used when the tab view is navigated to a named route.
  ///
  /// This is used if [routes] does not contain the requested route.
  final RouteFactory onGenerateRoute;

  /// Called when [onGenerateRoute] also fails to generate a route.
  ///
  /// This callback is typically used for error handling. For example, this
  /// callback might always generate a "not found" page that describes the route
  /// that wasn't found.
  ///
  /// The default implementation pushes a route that displays an ugly error
  /// message.
  final RouteFactory onUnknownRoute;

  /// The list of observers for the [Navigator] created in this tab view.
  ///
  /// This list of observers is not shared with ancestor or descendant [Navigator]s.
  final List<NavigatorObserver> navigatorObservers;

  @override
  _BBNavigationViewState createState() {
    return _BBNavigationViewState();
  }
}

class _BBNavigationViewState extends State<BBNavigationView> {
  HeroController _heroController;
  List<NavigatorObserver> _navigatorObservers;

  @override
  void initState() {
    super.initState();
    _heroController = CupertinoApp.createCupertinoHeroController();
    _updateObservers();
  }

  @override
  void didUpdateWidget(BBNavigationView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.navigatorKey != oldWidget.navigatorKey
        || widget.navigatorObservers != oldWidget.navigatorObservers) {
      _updateObservers();
    }
  }

  void _updateObservers() {
    _navigatorObservers =
        List<NavigatorObserver>.from(widget.navigatorObservers)
          ..add(_heroController);
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: widget.navigatorKey,
      initialRoute: widget.rootRouteName,
      onGenerateRoute: widget.onGenerateRoute,
      onUnknownRoute: _onUnknownRoute,
      observers: _navigatorObservers,
    );
  }

  Route<dynamic> _onUnknownRoute(RouteSettings settings) {
    assert(() {
      if (widget.onUnknownRoute == null) {
        throw FlutterError.fromParts(<DiagnosticsNode>[
          ErrorSummary('Could not find a generator for route $settings in the $runtimeType.'),
          ErrorDescription(
            'Generators for routes are searched for in the following order:\n'
            ' 1. For the "/" route, the "builder" property, if non-null, is used.\n'
            ' 2. Otherwise, the "routes" table is used, if it has an entry for '
            'the route.\n'
            ' 3. Otherwise, onGenerateRoute is called. It should return a '
            'non-null value for any valid route not handled by "builder" and "routes".\n'
            ' 4. Finally if all else fails onUnknownRoute is called.\n'
            'Unfortunately, onUnknownRoute was not set.'
          )
        ]);
      }
      return true;
    }());
    final Route<dynamic> result = widget.onUnknownRoute(settings);
    assert(() {
      if (result == null) {
        throw FlutterError.fromParts(<DiagnosticsNode>[
          ErrorSummary('The onUnknownRoute callback returned null.'),
          ErrorDescription(
            'When the $runtimeType requested the route $settings from its '
            'onUnknownRoute callback, the callback returned null. Such callbacks '
            'must never return null.'
          )
        ]);
      }
      return true;
    }());
    return result;
  }
}
