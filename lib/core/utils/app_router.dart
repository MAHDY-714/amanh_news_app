import 'package:amanh_news_app/Features/screens/presentation/views/home/home_view.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/nav_bar_view.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/search/search_view.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/settings/settings_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String kNavBarView = '/';
  static const String kHomeView = '/HomeView';
  static const String kSearchView = '/SearchView';
  static const String kSettingsView = '/SettingsView';
  static final routers = GoRouter(
    routes: [
      GoRoute(
        path: kNavBarView,
        builder: (context, state) => const NavBarView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: kSettingsView,
        builder: (context, state) => const SettingsView(),
      ),
    ],
  );
}
