import 'dart:developer';

import 'package:amanh_news_app/Features/screens/data/repo/home_repo_implement.dart';
import 'package:amanh_news_app/Features/screens/presentation/manager/home_cubit/home_cubit.dart';
import 'package:amanh_news_app/Features/screens/presentation/manager/settings%20cubit/settings_cubit.dart';
import 'package:amanh_news_app/core/services/api_services.dart';
import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/styles/themes/theme_app.dart';
import 'package:amanh_news_app/core/utils/app_router.dart';
import 'package:amanh_news_app/core/utils/bloc_observer.dart';
import 'package:amanh_news_app/core/utils/cache_helper.dart';
import 'package:amanh_news_app/core/utils/constance.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await CacheHelper.init();
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //   statusBarColor: kMode
  //       ? AppColor.redDeep
  //       : AppColor.redDeep6, // تحديد لون الـ Status Bar
  //   statusBarIconBrightness:
  //       Brightness.light, // التحكم في لون أيقونات الـ Status Bar
  // ));
  log('is Mode in Main $kMode');
  runApp(const AMANHNews());
}

class AMANHNews extends StatelessWidget {
  const AMANHNews({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              HomeCubit(HomeRepoImplement(ApiServices(dio: Dio())))
                ..getCategoryHome(6),
        ),
        BlocProvider(
          create: (context) => SettingsCubit(),
        ),
      ],
      child: Builder(builder: (context) {
        return MaterialApp.router(
          theme: ThemeApp.lightThemeMode(context),
          darkTheme: ThemeApp.darkThemeMode(context),
          themeMode: kMode ? ThemeMode.dark : ThemeMode.light,
          debugShowCheckedModeBanner: false,
          routerConfig: AppRouter.routers,
        );
      }),
    );
  }
}
