// ignore_for_file: unnecessary_breaks

import 'package:bloc/bloc.dart';

enum NavigationState { home, course, search, message, account }

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationState.home);

  void selectPage(int index) {
    switch (index) {
      case 0:
        emit(NavigationState.home);
        break;
      case 1:
        emit(NavigationState.course);
        break;
      case 2:
        emit(NavigationState.search);
        break;
      case 3:
        emit(NavigationState.message);
        break;
      case 4:
        emit(NavigationState.account);
        break;
      default:
        emit(NavigationState.home);
    }
  }
}
