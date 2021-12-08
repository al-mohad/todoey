import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoey/application/auth_form/auth_form_bloc.dart';
import 'package:todoey/injection.dart';
import 'package:todoey/presentation/screens/auth_screen/widgets/sign_in_form.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
        centerTitle: true,
      ),
      body: BlocProvider(
        create: (context) => getIt<AuthFormBloc>(),
        child: const LoginForm(),
      ),
    );
  }
}
