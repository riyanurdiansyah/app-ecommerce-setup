import 'package:app_ecommerce_admin/app_ecommerce_admin.dart';
import 'package:app_ecommerce_setup/routes/app_route_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRoute {
  GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        name: AppRouteName.splash,
        builder: (context, state) {
          return Container(
            color: Colors.red,
          );
        },
      ),
      GoRoute(
        path: '/admin',
        name: AppRouteName.admin,
        builder: (context, state) {
          return const AdminHomePage();
        },
      ),
      GoRoute(
        path: '/auth',
        name: AppRouteName.auth,
        builder: (context, state) {
          return const AdminHomePage();
        },
      ),
    ],
    initialLocation: '/',
    debugLogDiagnostics: true,
    // urlPathStrategy: UrlPathStrategy.path,
  );
}
