import 'package:fitness_app_ui/features/home/presentation/view/home_view.dart';
import 'package:fitness_app_ui/features/profile/presentation/view/profile_view.dart';
import 'package:fitness_app_ui/features/session/presentation/view/session_view.dart';
import 'package:fitness_app_ui/shared/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum AppRoute { home, session, profile }

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kSessionView = '/sessionView';
  static const kProfileView = '/profileView';
  static final GoRouter router = GoRouter(
    initialLocation: kHomeView,
    routes: [
      StatefulShellRoute.indexedStack(
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: kHomeView,
                name: AppRoute.home.name,
                pageBuilder: (context, state) => NoTransitionPage(
                  child: HomeView(),
                ),
              ),
              GoRoute(
                path: kSessionView,
                name: AppRoute.session.name,
                pageBuilder: (context, state) => NoTransitionPage(
                  child: SessionView(),
                ),
              ),
              GoRoute(
                path: kProfileView,
                name: AppRoute.profile.name,
                pageBuilder: (context, state) => NoTransitionPage(
                  child: ProfileView(),
                ),
              ),
            ],
          ),
        ],
        builder: (context, state, navigationShell) {
          return BottomNavBar();
        },
      ),
    ],
  );
}
