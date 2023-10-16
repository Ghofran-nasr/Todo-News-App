import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_news_application/layout/newa_app/cubit/states.dart';

class NewsCubit extends Cubit<NewsStates>
{
  NewsCubit(): super(NewsInitialState());
  static NewsCubit get(context) => BlocProvider.of((context));

}