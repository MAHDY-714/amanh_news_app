import 'package:amanh_news_app/Features/screens/presentation/manager/home_cubit/home_cubit.dart';
import 'package:amanh_news_app/Features/screens/presentation/manager/settings%20cubit/settings_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitObjects {
  CubitObjects._();
  static SettingsCubit settingsCubit(context) => BlocProvider.of<SettingsCubit>(context);
  static HomeCubit homeCubit(context) => BlocProvider.of<HomeCubit>(context);
}
