import 'package:amanh_news_app/Features/screens/presentation/views/home/home_view.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/widget/bottom_nav_bar.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/widget/home_button_nav_bar.dart';
import 'package:flutter/material.dart';

class NavBarBodyView extends StatelessWidget {
  const NavBarBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: HomeView()),
      floatingActionButton: HomeButtonInNavBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
