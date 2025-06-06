import 'package:amanh_news_app/Features/screens/presentation/manager/search_cubit/search_cubit.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/search/search_body_view.dart';
import 'package:amanh_news_app/core/utils/cubit_objects.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SearchCubit>(
      create: (context) => Cubits.searchProvider(context),
      child: const Scaffold(
        body: SearchBodyView(),
      ),
    );
  }
}
