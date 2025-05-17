import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/body%20content/items_in_settings_list_view.dart';
import 'package:amanh_news_app/core/utils/cubit_objects.dart';
import 'package:amanh_news_app/core/widget/body_color.dart';
import 'package:flutter/material.dart';

class SettingsBodyView extends StatelessWidget {
  const SettingsBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    var cubi = Cubits.settingsCubit(context);
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
  }
}
