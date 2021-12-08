import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:todoey/injection.dart';
import 'package:todoey/presentation/core/app_widget.dart';

import 'presentation/routes/route.gr.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configureInjection(Environment.prod);
  getIt.registerSingleton<AppRouter>(AppRouter());
  runApp(const AppWidget());
}
