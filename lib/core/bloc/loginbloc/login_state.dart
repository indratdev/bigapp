part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {}

abstract class FailureState extends LoginState {
  String errorMessage;

  FailureState({
    required this.errorMessage,
  });

  @override
  List<Object> get props => [errorMessage];
}

class LoadingLoginUserState extends LoginState {}

class FailureLoginUserState extends FailureState {
  FailureLoginUserState({required super.errorMessage});
}
