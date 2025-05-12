import 'package:amanh_news_app/Features/screens/presentation/views/home/home_view.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/widget/bottom_nav_bar.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/widget/home_button_nav_bar.dart';
import 'package:amanh_news_app/core/widget/body_color.dart';
import 'package:flutter/material.dart';

class NavBarBodyView extends StatelessWidget {
  const NavBarBodyView({super.key});
  @override
  Widget build(BuildContext context) {
    return BodyColor(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0.0),
          child: AppBar(),
        ),
        body: const SafeArea(
          child: HomeView(),
        ),
        floatingActionButton: const HomeButtonInNavBar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: const BottomNavBar(),
      ),
    );
  }
}
