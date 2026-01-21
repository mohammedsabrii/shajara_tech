import 'package:go_router/go_router.dart';
import 'package:shajara_tech/features/auth/presentation/screen/login_screen.dart';

class AppRouter {
  static const kLogInScreen = '/';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kLogInScreen,
        builder: (context, state) => const LoginScreen(),
      ),
    ],
  );
}
