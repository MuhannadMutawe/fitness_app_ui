import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kSessionView = '/sessionView';
  static const kProfileView = '/profileView';
  static final GoRouter router = GoRouter(
    initialLocation: kHomeView,
    routes: [
      StatefulShellRoute.indexedStack(
        branches: [],
        builder: (context, state, navigationShell) {
          return BottomAppBar();
        },
      ),
    ],
  );
}
