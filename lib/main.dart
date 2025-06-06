import 'dart:developer';
import 'package:amanh_news_app/core/styles/themes/theme_app.dart';
import 'package:amanh_news_app/core/utils/app_router.dart';
import 'package:amanh_news_app/core/utils/bloc_observer.dart';
import 'package:amanh_news_app/core/utils/cache_helper.dart';
import 'package:amanh_news_app/core/utils/constance.dart';
import 'package:amanh_news_app/core/utils/cubit_objects.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await CacheHelper.init();
  log('is Mode in Main $kMode');
  runApp(const AMANHNews());
}

class AMANHNews extends StatelessWidget {
  const AMANHNews({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        Cubits.homeProvider(context),
        Cubits.settingsProvider(context),
      ],
      child: Builder(
        builder: (context) {
          return MaterialApp.router(
            theme: ThemeApp.lightThemeMode(context),
            darkTheme: ThemeApp.volcanoThemeMode(context),
            themeMode: ThemeApp.getThemeMode(context),
            debugShowCheckedModeBanner: false,
            routerConfig: AppRouter.routers,
          );
        },
      ),
    );
  }
}
