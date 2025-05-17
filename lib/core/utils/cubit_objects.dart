import 'package:amanh_news_app/Features/screens/data/repo/home_repo_implement.dart';
import 'package:amanh_news_app/Features/screens/presentation/manager/home_cubit/home_cubit.dart';
import 'package:amanh_news_app/Features/screens/presentation/manager/settings%20cubit/settings_cubit.dart';
import 'package:amanh_news_app/core/services/api_services.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Cubits {
  Cubits._();
  static SettingsCubit settingsCubit(context) =>
      BlocProvider.of<SettingsCubit>(context);
  static HomeCubit homeCubit(context) => BlocProvider.of<HomeCubit>(context);
  static BlocProvider<HomeCubit> homeCubitProvider(context) => BlocProvider(
      create: (context) => HomeCubit(HomeRepoImplement(ApiServices(dio: Dio())))
        ..getCategoryHome(6));
  static BlocProvider<SettingsCubit> settingsCubitProvider(context) =>
      BlocProvider(create: (context) => SettingsCubit());
}
