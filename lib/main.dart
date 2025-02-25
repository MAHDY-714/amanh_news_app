import 'package:amanh_news_app/Features/screens/data/repo/home_repo_implement.dart';
import 'package:amanh_news_app/Features/screens/presentation/manager/cubit/home_cubit.dart';
import 'package:amanh_news_app/core/services/api_services.dart';
import 'package:amanh_news_app/core/styles/themes/theme_app.dart';
import 'package:amanh_news_app/core/utils/app_router.dart';
import 'package:amanh_news_app/core/utils/bloc_observer.dart';
import 'package:amanh_news_app/core/utils/constance.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  runApp(AMANHNews());
}

class AMANHNews extends StatelessWidget {
  const AMANHNews({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(HomeRepoImplement(ApiServices(dio: Dio())))
        ..getHomeData(category: kNewsCategoriesName.last),
      child: MaterialApp.router(
        theme: ThemeApp.lightThemeMode(context),
        darkTheme: ThemeApp.darkThemeMode(context),
        themeMode: ThemeApp.getThemeMode(isDark: true),
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.routers,
      ),
    );
  }
}
