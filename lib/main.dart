import 'package:bigapp/config/routes.dart';
import 'package:bigapp/core/bloc/listPengiriman_bloc/listpengiriman_bloc.dart';
import 'package:bigapp/core/bloc/loginbloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  Routes routes = Routes();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(),
        ),
        BlocProvider(
          create: (context) => ListpengirimanBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: routes.getRoutes,
      ),
    );
  }
}
