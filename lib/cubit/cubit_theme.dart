import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/cubit/states_app.dart';
import 'package:news/cubit/states_theme.dart';

class CubitTheme extends Cubit<ThemeStates> {
  CubitTheme() : super(ThemeInitialStates());

  static CubitTheme get(context) => BlocProvider.of(context);


  bool isDark = false;
  void changeAppMood(){
    isDark = !isDark;
    emit(changeAppMoodStates());
  }
}