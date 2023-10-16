import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'layout/newa_app/news_layout.dart';

void main() {
  runApp( MyApp());

}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
            backwardsCompatibility: false,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.white,
              statusBarIconBrightness: Brightness.dark,
            ),
            backgroundColor: Colors.white,
            elevation: 0.0,
            titleTextStyle: TextStyle(color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,),
            iconTheme: IconThemeData(
              color: Colors.black,
            ),

          ),
          bottomNavigationBarTheme:BottomNavigationBarThemeData(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.deepOrange,
            elevation: 20.0,
          ),

        ),
        home: newsLayout(),
    );
  }
}

