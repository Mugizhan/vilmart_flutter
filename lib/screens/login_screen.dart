import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vilmart_android/bloc/login_bloc/login_bloc.dart';
import '../data/repositories/login_repositories.dart';
import '../widgets/login_button.dart';
import '../widgets/userpassword_field.dart';
import '../widgets/userphone_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(authRepo: context.read<LoginRepository>()),
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  UsernameField(),
                  PasswordField(),
                  SizedBox(height: 15),
                  LoginButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
