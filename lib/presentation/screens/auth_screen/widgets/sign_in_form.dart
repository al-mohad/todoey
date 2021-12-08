import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoey/application/auth_form/auth_form_bloc.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthFormBloc, AuthFormState>(
      listener: (context, state) {
        context.read<AuthFormBloc>().state.authFailureOrSuccess.fold(
              () {},
              (either) => either.fold(
                (failure) {
                  FlushbarHelper.createError(
                    message: failure.map(
                      cancelledByUser: (_) => 'cancelledByUser',
                      serverError: (_) => 'serverError',
                      emailALreadyInUse: (_) => 'emailALreadyInUse',
                      invalidEmailOrPassword: (_) => 'invalidEmailOrPassword',
                    ),
                  ).show(context);
                },
                (_) {},
              ),
            );
      },
      builder: (context, state) {
        return Form(
          autovalidateMode:
              context.watch<AuthFormBloc>().state.showErrorMessages
                  ? AutovalidateMode.onUserInteraction
                  : AutovalidateMode.disabled,
          child: ListView(
            children: [
              const Text(
                '📝',
                style: TextStyle(fontSize: 130),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Email',
                ),
                autocorrect: false,
                onChanged: (value) => context
                    .read<AuthFormBloc>()
                    .add(AuthFormEvent.emailChanged(email: value)),
                validator: (_) =>
                    context.watch<AuthFormBloc>().state.emailAddress.value.fold(
                          (f) => f.maybeMap(
                            invalidEmail: (_) => 'Invalid email',
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: 'Password',
                ),
                autocorrect: false,
                obscureText: true,
                onChanged: (value) => context
                    .read<AuthFormBloc>()
                    .add(AuthFormEvent.passwordChanged(password: value)),
                validator: (_) =>
                    context.watch<AuthFormBloc>().state.password.value.fold(
                          (f) => f.maybeMap(
                            shortPassword: (_) => 'Short password',
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        context
                            .read<AuthFormBloc>()
                            .add(const AuthFormEvent.signInPressed());
                        print('1signIn');
                      },
                      child: const Text('SIGN IN'),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () => context
                          .read<AuthFormBloc>()
                          .add(const AuthFormEvent.registerUserPressed()),
                      child: const Text('REGISTER'),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  context
                      .read<AuthFormBloc>()
                      .add(const AuthFormEvent.signInWithGooglePressed());
                },
                child: const Text('SIGN IN WITH GOOGLE'),
              ),
            ],
          ),
        );
      },
    );
  }
}
