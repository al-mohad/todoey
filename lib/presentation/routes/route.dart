import 'package:auto_route/auto_route.dart';
import 'package:todoey/presentation/screens/auth_screen/auth_screen.dart';
import 'package:todoey/presentation/screens/notes_screen/notes_screen.dart';
import 'package:todoey/presentation/screens/splash_screen/splash_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: [
    AutoRoute(page: SplashScreen, initial: true),
    AutoRoute(page: AuthScreen),
    AutoRoute(page: NotesScreen),
  ],
)
class $AppRouter {}
