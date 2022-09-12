part of 'listpengiriman_bloc.dart';

abstract class ListpengirimanEvent extends Equatable {
  const ListpengirimanEvent();

  @override
  List<Object> get props => [];
}

class InitialListPengiriman extends ListpengirimanEvent {}
