import 'package:bloc/bloc.dart';
import 'package:bookia_store/featuers/auth/data/repo/auth_repo.dart';

import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  Future<void> login({required String email, required String password}) async {
    emit(AuthLoadingState());
    final response = await AuthRepo.login(email: email, password: password);
    if (response) {
      emit(AuthSuccessState());
    } else {
      emit(AuthErrorState());
    }
  }

  Future<void> register({
    required String name,
    required String email,
    required String password,
    required String password_confirmation,
    String? address,
    String? city,
  }) async {
    emit(AuthLoadingState());
    final response = await AuthRepo.register(
      name: name,
      email: email,
      password: password,
      password_confirmation: password_confirmation,
    );
    if (response == true) {
      emit(AuthSuccessState());
    } else {
      emit(AuthErrorState());
    }
  }
}
