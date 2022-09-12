import 'package:bigapp/core/params/login_param.dart';
import 'package:bigapp/data/exceptions/exceptions.dart';
import 'package:bigapp/data/models/login_model.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repositories/user_repo.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    UserRepositories repo = UserRepositories();

    on<LoginUserEvent>((event, emit) async {
      emit(LoadingLoginUserState());
      try {
        var result = await repo.loginUserRepo(params: event.params);
        repo.setToken(result.token); // save token
        emit(SuccessLoginUserState());
      } on LoginFailure catch (e) {
        emit(FailureLoginUserState(errorMessage: e.toString()));
      } catch (e) {
        print(e.toString());
        emit(FailureLoginUserState(errorMessage: ""));
      }
    });
  }
}
