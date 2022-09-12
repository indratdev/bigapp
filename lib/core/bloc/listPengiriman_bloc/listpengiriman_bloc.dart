import 'dart:ui';

import 'package:bigapp/core/bloc/loginbloc/login_bloc.dart';
import 'package:bigapp/core/params/listpengiriman_param.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/repositories/user_repo.dart';

part 'listpengiriman_event.dart';
part 'listpengiriman_state.dart';

class ListpengirimanBloc
    extends Bloc<ListpengirimanEvent, ListpengirimanState> {
  ListpengirimanBloc() : super(ListpengirimanInitial()) {
    UserRepositories repo = UserRepositories();
    on<InitialListPengiriman>((event, emit) async {
      emit(LoadingInitialListPengiriman());
      try {
        String token = await repo.getToken();
        var result = await repo.listPengirimanRepo(
            params: ListPengirimanParam(Authorization: token));
      } catch (e) {
        print(e.toString());
        emit(FailureInitialListPengiriman(
            errorMessage: "Gagal Menampilkan Data"));
      }
    });
  }
}
