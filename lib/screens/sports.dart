import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/components/build_artical_item.dart';
import 'package:news/components/divider_components.dart';
import 'package:news/cubit/cubit_app.dart';
import 'package:news/cubit/states_app.dart';

class SportsScree extends StatelessWidget {
  const SportsScree({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var list = NewsCubit.get(context).sports;
        return ListView.separated(
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) => BuildArticleItem( list[index],),
          separatorBuilder: (context, index) => DividerComponents(),
          itemCount: list!.length,
        );
      },
    );
  }
}
