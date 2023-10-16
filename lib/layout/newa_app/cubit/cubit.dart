import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_news_application/layout/newa_app/cubit/states.dart';
import 'package:todo_news_application/modules/business/business%20screen.dart';
import 'package:todo_news_application/modules/science/science%20screen.dart';
import 'package:todo_news_application/modules/setting/settings%20screen.dart';
import 'package:todo_news_application/modules/sports/sports%20screen.dart';

class NewsCubit extends Cubit<NewsStates>
{
  NewsCubit(): super(NewsInitialState());
  static NewsCubit get(context) => BlocProvider.of((context));

  int currentIndex=0;
  List<BottomNavigationBarItem> bottomItems=[
    BottomNavigationBarItem(
        icon: Icon(
          Icons.business,
        ),
        label: "Busniess",
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.sports,
      ),
      label: "Sports",
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.science,
      ),
      label: "Science",
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.settings,
      ),
      label: "Settings",
    ),

  ];
  List <Widget>screens=[
    BusinessScreen(),
    SportsScreen(),
    ScienceScreen(),
    SettingScreen(),


  ];

  void changeBottomNavigationBar(int index, ){
    currentIndex =index;
    emit(NewsBottomNavState());
  }

}