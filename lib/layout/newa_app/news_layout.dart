import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_news_application/layout/newa_app/cubit/cubit.dart';
import 'package:todo_news_application/layout/newa_app/cubit/states.dart';

class newsLayout extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(BuildContext context) => NewsCubit(),
      child: BlocConsumer<NewsCubit, NewsStates>(
          listener: (context, state){},
          builder: (context, state){
            var cubit =NewsCubit.get(context);
            return Scaffold(
              appBar: AppBar(
                title: Text(
            'News App',
          ),
              actions: [
                IconButton(onPressed: (){}, icon: Icon(Icons.search,),),
              ],
              ),

                bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.currentIndex,
                onTap: (index){
                cubit.changeBottomNavigationBar(index);
                },
                items:cubit.bottomItems,

            ),
                body: cubit.screens[cubit.currentIndex],
            );
            },
      ),

    );
  }
}
