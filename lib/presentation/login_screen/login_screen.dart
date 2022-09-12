import 'package:bigapp/core/bloc/listPengiriman_bloc/listpengiriman_bloc.dart';
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
        title: const Text("Masuk Akun"),
        centerTitle: true,
      ),
      body: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state is SuccessLoginUserState) {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text("Anda Berhasil Login"),
                    actions: <Widget>[
                      ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<ListpengirimanBloc>(context)
                                .add(InitialListPengiriman());
                            Navigator.pushNamed(context, '/listpengiriman');
                          },
                          child: Text("Masuk"))
                    ],
                  );
                });
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Email/No.Handphone*"),
                  TextField(
                    controller: userController,
                    decoration: InputDecoration(
                      labelText: 'Enter Username',
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 3, color: Colors.blue),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 3, color: Colors.red),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Kata Sandi*"),
                  TextField(
                    controller: passController,
                    decoration: InputDecoration(
                      labelText: 'Enter Password',
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 3, color: Colors.blue),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 3, color: Colors.red),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("Lupa Kata Sandi?"),
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    print(">>> btn process");
                    BlocProvider.of<LoginBloc>(context).add(LoginUserEvent(
                        params: LoginParams(
                            userName: "DR220400122",
                            passwordUser: "12345678")));
                    // APIProviders().loginProcess("DR220400122", "12345678");
                  },
                  child: Text("Masuk"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
