import 'package:bigapp/core/bloc/loginbloc/login_bloc.dart';
import 'package:bigapp/core/params/login_param.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            controller: userController,
            decoration: InputDecoration(
              labelText: 'Enter Username',
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 3, color: Colors.blue),
                borderRadius: BorderRadius.circular(15),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 3, color: Colors.red),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          TextField(
            controller: passController,
            decoration: InputDecoration(
              labelText: 'Enter Password',
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 3, color: Colors.blue),
                borderRadius: BorderRadius.circular(15),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 3, color: Colors.red),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              print(">>> btn process");
              BlocProvider.of<LoginBloc>(context).add(LoginUserEvent(
                  params: LoginParams(
                      userName: "DR220400122x", passwordUser: "12345678")));
              // APIProviders().loginProcess("DR220400122", "12345678");
            },
            child: Text("Masuk"),
          ),
        ],
      ),
    );
  }
}
