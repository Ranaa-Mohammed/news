import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/components/build_artical_item.dart';
import 'package:news/components/divider_components.dart';
import 'package:news/cubit/states_app.dart';

import '../cubit/cubit_app.dart';

class ScienceScreen extends StatelessWidget {
  const ScienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var list = NewsCubit.get(context).science;
        return ListView.separated(
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) => BuildArticleItem(list[index],),
          separatorBuilder: (context, index) => DividerComponents(),
          itemCount: list!.length,
        );
      },
    );
  }
}
