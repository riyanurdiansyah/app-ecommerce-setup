import 'package:app_ecommerce_admin/app_ecommerce_admin.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class AppRouteWeb {
  static final FluroRouter router = FluroRouter();

  static final Handler _splashHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          Container(
            color: Colors.red,
          ));
  static final Handler _signupHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
        const AdminAuthPage(
      route: 'signup',
    ),
  );
  static final Handler _signinHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
        const AdminAuthPage(
      route: 'signin',
    ),
  );
  static final Handler _dashboardHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
        AdminDashboardPage(
      route: params['route'][0],
    ),
  );

  static final Handler _notFoundHandler = Handler(
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
      handler: _signinHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      '/signup',
      handler: _signupHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      '/:route',
      handler: _dashboardHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.notFoundHandler = _notFoundHandler;
  }
}
