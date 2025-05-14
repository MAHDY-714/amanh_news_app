import 'package:amanh_news_app/Features/screens/presentation/manager/home_cubit/home_cubit.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/home/widget/category/news_categories_item_view.dart';
import 'package:amanh_news_app/core/styles/assets/assets_images.dart';
import 'package:amanh_news_app/core/styles/media_quire_and_spaces.dart';
import 'package:amanh_news_app/core/utils/constance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsCategoriesListView extends StatelessWidget {
  const NewsCategoriesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var cubi = BlocProvider.of<HomeCubit>(context);
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (BuildContext context, state) {
        return Container(
          height: kHeightConditions(context,
              valueIsTrue: 140.0, valueIsFalse: 160.0),
          width: kWidth(context),
          child: ListView.builder(
            itemBuilder: ((context, index) => InkWell(
                  onTap: () {
                    cubi.getCategoryHome(index);
                    // cubi.changeTheme(context, mode: kMode, index: index);
                  },
                  child: NewsCategoriesItemBuilder(
                    imageCategory: AssetsImages.newsCategoriesImages[index],
                    nameCategory: kNewsCategoriesName[index],
                    isActive: cubi.currentCategory == index ? true : false,
                  ),
                )),
            itemCount: kNewsCategoriesName.length - 1,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
          ),
        );
      },
    );
  }
}
