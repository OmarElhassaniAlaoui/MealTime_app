part of 'app_router_config.dart';

abstract class _Paths {

  ///
  /// welcome page
  ///
  static const spalsh = '/spalsh';
  static const home = '/home';
  static const template = '/template';
}

abstract class AppRoutes {
  AppRoutes._();

  ///
  /// welcome page
  ///
  static const splash = _Paths.spalsh;
  static const home = _Paths.home;
  static const template = _Paths.template;
}
