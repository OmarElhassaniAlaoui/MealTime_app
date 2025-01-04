import 'routes_exports.dart';
part "app_routes.dart";

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

class AppPagesConfig {
  late final GoRouter router = GoRouter(
    routes: _routes,
    initialLocation: AppRoutes.template,
  );

  static final _routes = <RouteBase>[
    GoRoute(
      path: AppRoutes.template,
      builder: (context, state) => const TemplatePage(),
    ),
  ];
}
