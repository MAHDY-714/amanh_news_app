import 'package:amanh_news_app/Features/screens/presentation/manager/home_cubit/home_cubit.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/home/home_view.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/widget/bottom_nav_bar.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/widget/home_button_nav_bar.dart';
import 'package:amanh_news_app/core/widget/body_color.dart';
import 'package:amanh_news_app/core/widget/circle_indicator_loading_widget.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavBarBodyView extends StatelessWidget {
  const NavBarBodyView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
      return ConditionalBuilder(
        condition: state is! HomeChangeToDarkModeState ||
            state is! HomeChangeToLightModeState,
        builder: (BuildContext context) {
          return BodyColor(
            child: Scaffold(
              appBar: AppBar(
                toolbarHeight: 0.0,
              ),
              body: const HomeView(),
              floatingActionButton: const HomeButtonInNavBar(),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              bottomNavigationBar: const BottomNavBar(),
            ),
          );
        },
        fallback: (BuildContext context) =>
            const CircleIndicatorLoadingWidget(),
      );
    });
  }
}
