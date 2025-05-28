import 'package:amanh_news_app/Features/screens/presentation/manager/settings%20cubit/settings_cubit.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/body%20content/items_in_settings_list_view.dart';
import 'package:amanh_news_app/core/utils/cubit_objects.dart';
import 'package:amanh_news_app/core/widget/body_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsBodyView extends StatelessWidget {
  const SettingsBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    var cubi = Cubits.settings(context);
    var cubiHome = Cubits.home(context);
    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (canPop, result) async {
        cubiHome.getCategoryHome(cubiHome.currentCategory);
      },
      child: BlocBuilder<SettingsCubit, SettingsState>(
        builder: (context, state) {
          return BodyColor(
            child: Scaffold(
              body: SafeArea(
                child: CustomScrollView(
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  slivers: [
                    SliverToBoxAdapter(
                      child: ItemsInSettingsListView(cubi: cubi),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
