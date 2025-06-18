import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/cubit/cubit_app.dart';
import 'package:news/cubit/cubit_theme.dart';
import 'package:news/cubit/states_theme.dart';
import 'package:news/screens/homeNews.dart';
import 'package:news/screens/theme_data.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => CubitTheme(),),
        BlocProvider(create: (BuildContext context) => NewsCubit()..getBusiness(),),
      ],
      child: BlocProvider(
        create: (BuildContext context) => CubitTheme(),
        child: BlocConsumer<CubitTheme,ThemeStates>(
          listener: (context,state){},
            builder: (context,state){
            return MaterialApp(
              debugShowCheckedModeBanner: false,
                   //light
              theme: lightTheme,
                     //dark
              darkTheme: darkTheme,
                //بغير بيه بين الاتنين ابيض واسود
              themeMode: CubitTheme.get(context).isDark ? ThemeMode.dark : ThemeMode.light,
              home: Homenews(),
            );
            },
        ),
      ),
    );
  }
}







