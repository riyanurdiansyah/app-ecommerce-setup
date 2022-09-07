import 'package:app_ecommerce_admin/pages/admin_dashboard_page.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class AppRouteWeb {
  static final FluroRouter router = FluroRouter();

  static final Handler _splashHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          Container(
            color: Colors.red,
          ));
  static final Handler _signInHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
        Container(
      color: Colors.red,
    ),
  );
  static final Handler _dashboardHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
        AdminDashboardPage(
      route: params['route'][0],
    ),
  );

  static void setupRouter() {
    router.define(
      '/',
      handler: _splashHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      '/signin',
      handler: _signInHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      '/:route',
      handler: _dashboardHandler,
      transitionType: TransitionType.fadeIn,
    );
  }
}
