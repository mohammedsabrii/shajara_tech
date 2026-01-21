import 'package:go_router/go_router.dart';
import 'package:shajara_tech/features/auth/presentation/screen/login_screen.dart';
import 'package:shajara_tech/features/auth/presentation/screen/sign_up_screen.dart';
import 'package:shajara_tech/features/splash/presentation/screen/splash_screen.dart';

class AppRouter {
  static const kSplashScreen = '/';
  static const kLogInScreen = '/LoginScreen';
  static const kSignUpScreen = '/SignUpScreen';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kSplashScreen,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: kLogInScreen,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: kSignUpScreen,
        builder: (context, state) => const SignUpScreen(),
      ),
    ],
  );
}
