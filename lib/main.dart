import 'package:amanh_news_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AMANHNews());
}

class AMANHNews extends StatelessWidget {
  const AMANHNews({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.routers,
    );
  }
}
