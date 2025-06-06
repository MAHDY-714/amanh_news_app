import 'package:amanh_news_app/Features/screens/data/repo/home_repo_implement.dart';
import 'package:amanh_news_app/Features/screens/presentation/manager/home_cubit/home_cubit.dart';
import 'package:amanh_news_app/Features/screens/presentation/manager/search_cubit/search_cubit.dart';
import 'package:amanh_news_app/Features/screens/presentation/manager/settings%20cubit/settings_cubit.dart';
import 'package:amanh_news_app/core/services/api_services.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Cubits {
  Cubits._();
  //**! Home Cubit **//
  static HomeCubit home(context) => BlocProvider.of<HomeCubit>(context);
  static BlocProvider<HomeCubit> homeProvider(context) => BlocProvider(
      create: (context) => HomeCubit(HomeRepoImplement(ApiServices(Dio())))
        ..getCategoryHome(6));

  //**! Settings Cubit **//
  static SettingsCubit settings(context) =>
      BlocProvider.of<SettingsCubit>(context);
  static BlocProvider<SettingsCubit> settingsProvider(context) =>
      BlocProvider(create: (context) => SettingsCubit());

  //**! Search Cubit **//
  static SearchCubit search(context) => BlocProvider.of<SearchCubit>(context);
    static SearchCubit searchProvider(context) => SearchCubit(HomeRepoImplement(ApiServices(Dio())));
  // static BlocProvider<SettingsCubit> searchProvider(context) => BlocProvider.of<SearchCubit(HomeRepoImplement(ApiServices(dio: Dio())))>(context);
}
