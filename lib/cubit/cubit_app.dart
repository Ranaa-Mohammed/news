import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/cubit/states_app.dart';
import 'package:news/dio/dio_news.dart';
import 'package:news/screens/business.dart';
import 'package:news/screens/science.dart';
import 'package:news/screens/sports.dart';

import '../models/business_model.dart';

class NewsCubit extends Cubit<NewsStates> {
  NewsCubit() : super(NewsInitialStates());

  static NewsCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<Widget> screens = [
    BusinessScreen(),
    ScienceScreen(),
    SportsScree(),
  ];
  // List<String> titles = [
  //   'Tasks',
  //   'Done',
  //   'Archived',
  // ];

  void changeIndex(int index) {
    currentIndex = index;
    if(index == 1){
      getScience();
    }
    if(index == 2){
      getSports();
    }
    emit(BottomNavigationBarStates());
  }

  List<dynamic> business = [];
  void getBusiness() {
    emit(LoadingBusinessStates());
    DioNews().getData(
      url: 'v2/top-headlines',
      queryParameters: {
        "country": 'us',
        "category": 'business',
        "apiKey": 'f2a36e4bc8ad41a79e9d69abab73453c',
      },
    ).then((value) {
      final NewsModel newsModel =
      NewsModel.fromJson(value.data);
      business = newsModel.articles ?? [];
      emit(GetBusinessSuccessStates());
    }).catchError((error) {
      print(error.toString());
      emit(GetBusinessErrorStates(errorMessage: error.toString()));
    });
  }

  List<dynamic> science = [];
  void getScience() {
    emit(LoadingScienceStates());
    DioNews().getData(
      url: 'v2/top-headlines',
      queryParameters: {
        "country": 'us',
        "category": 'science',
        "apiKey": 'f2a36e4bc8ad41a79e9d69abab73453c',
      },
    ).then((value) {
      final NewsModel newsModel =
      NewsModel.fromJson(value.data);
      science = newsModel.articles ?? [];
      emit(GetScienceSuccessStates());
    }).catchError((error) {
      print(error.toString());
      emit(GetScienceErrorStates(errorMessage: error.toString()));
    });
  }

  List<dynamic> sports = [];
  void getSports() {
    emit(LoadingSportsStates());
    DioNews().getData(
      url: 'v2/top-headlines',
      queryParameters: {
        "country": 'us',
        "category": 'sports',
        "apiKey": 'f2a36e4bc8ad41a79e9d69abab73453c',
      },
    ).then((value) {
      final NewsModel newsModel =
      NewsModel.fromJson(value.data);
      sports = newsModel.articles ?? [];
      emit(GetSportsSuccessStates());
    }).catchError((error) {
      print(error.toString());
      emit(GetSportsErrorStates(errorMessage: error.toString()));
    });
  }


  List<dynamic> search = [];
  void getSearch(String value) {
    emit(LoadingSearchStates());
    DioNews().getData(
      url: 'v2/everything',
      queryParameters: {
        "q": value,
        "apiKey": 'f2a36e4bc8ad41a79e9d69abab73453c',
      },
    ).then((value) {
      final NewsModel newsModel =
      NewsModel.fromJson(value.data);
      search = newsModel.articles ?? [];
      emit(GetSearchSuccessStates());
    }).catchError((error) {
      print(error.toString());
      emit(GetSearchErrorStates(errorMessage: error.toString()));
    });
  }
}