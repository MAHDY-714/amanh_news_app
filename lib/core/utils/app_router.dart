import 'package:amanh_news_app/Features/screens/presentation/views/nav_bar_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final routers = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => NavBarView(),
      ),
    ],
  );
}
