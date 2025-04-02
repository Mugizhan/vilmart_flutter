import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/login_bloc/login_bloc.dart';
import '../bloc/login_bloc/login_event.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(labelText: "Password"),
      obscureText: true,
      onChanged: (value) => context.read<LoginBloc>().add(LoginPasswordChanged(password: value)),
    );
  }
}
