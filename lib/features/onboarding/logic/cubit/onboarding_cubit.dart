import 'package:bloc/bloc.dart';

class OnboardingCubit extends Cubit<int> {
  OnboardingCubit() : super(0);

  void goToPage(int page) => emit(page);
  void nextPage() => emit(state + 1);
  void previousPage() => emit(state - 1);
}
