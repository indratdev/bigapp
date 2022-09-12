part of 'listpengiriman_bloc.dart';

abstract class ListpengirimanState extends Equatable {
  const ListpengirimanState();

  @override
  List<Object> get props => [];
}

abstract class FailureListPengirimanState extends ListpengirimanState {
  String errorMessage;

  FailureListPengirimanState({
    required this.errorMessage,
  });

  @override
  List<Object> get props => [errorMessage];
}

class ListpengirimanInitial extends ListpengirimanState {}

class LoadingInitialListPengiriman extends ListpengirimanState {}

class FailureInitialListPengiriman extends FailureListPengirimanState {
  FailureInitialListPengiriman({required super.errorMessage});
}
