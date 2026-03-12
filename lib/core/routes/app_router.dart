import 'package:go_router/go_router.dart';
import 'package:shajara_tech/features/auth/presentation/screen/login_otp_screen.dart';
import 'package:shajara_tech/features/home/domain/entity/occasion_entity.dart';
import 'package:shajara_tech/features/news/domain/entity/news_entity.dart';
import 'package:shajara_tech/features/occasion_details/presentation/view/occasion_details.dart';
import 'package:shajara_tech/features/profile/presentation/screens/delete_account_screen.dart';
import 'package:shajara_tech/features/tribe_details/presentation/screen/tribe_details_screen.dart';
import 'package:shajara_tech/features/NewsDetails/presentation/view/news_details.dart';
import 'package:shajara_tech/features/aboutUs/about_us.dart';
import 'package:shajara_tech/features/auth/presentation/screen/login_screen.dart';
import 'package:shajara_tech/features/auth/presentation/screen/sign_up_screen.dart';
import 'package:shajara_tech/features/chat/presentation/screen/chat_screen.dart';
import 'package:shajara_tech/features/edit_password/presentation/screen/edit_password_screen.dart';
import 'package:shajara_tech/features/tribes/domain/entitys/tribes_details_entity.dart';
import 'package:shajara_tech/features/tribes/domain/entitys/tribes_entity.dart';
import 'package:shajara_tech/features/tribes/presentation/screens/tribes_screen.dart';
import 'package:shajara_tech/features/forgot_password/presentation/screen/forgot_password_screen.dart';
import 'package:shajara_tech/features/forgot_password/presentation/screen/otp_screen.dart';
import 'package:shajara_tech/features/forgot_password/presentation/screen/reset_password_screen.dart';
import 'package:shajara_tech/features/home/presentation/screen/home.dart';
import 'package:shajara_tech/features/join%20to%20family/presentation/screen/join_to_family_screen.dart';
import 'package:shajara_tech/features/news/presentation/screen/news_screen.dart';
import 'package:shajara_tech/features/notification/presentation/screens/notification_screen.dart';
import 'package:shajara_tech/features/contact_us/presentation/screens/contact_us_screen.dart';
import 'package:shajara_tech/features/edit_profile/presentation/screen/edit_profile_screen.dart';
import 'package:shajara_tech/features/join_us/presentation/screen/join_us_screen.dart';
import 'package:shajara_tech/features/profile/presentation/screens/profile_screen.dart';
import 'package:shajara_tech/features/splash/presentation/screen/splash_screen.dart';

class AppRouter {
  static const kSplashScreen = '/';
  static const kLogInScreen = '/LoginScreen';
  static const kLogInOtpScreen = '/LoginOtpScreen';
  static const kSignUpScreen = '/SignUpScreen';
  static const kForgotPasswordScreen = '/ForgotPasswordScreen';
  static const kOtpScreen = '/OtpScreen';
  static const kHomeScreen = '/HomeeScreen';
  static const kNewsScreen = '/NewsScreen';
  static const kNewsDetailsScreen = '/NewsDetailsScreen';
  static const kAboutUsScreen = '/AboutUsScreen';
  static const kFamiliesScreen = '/FamiliesScreen';
  static const kTribeDetailsScreen = '/FamiliesDetailsScreen';
  static const kJoinToFamilyScreen = '/JoinToFamilyScreen';
  static const kChatScreen = '/ChatScreen';
  static const kProfileScreen = '/ProfileScreen';
  static const kResetPasswordScreen = '/ResetPasswordScreen';
  static const kEditProfileScreen = '/EditProfileScreen';
  static const kEditPasswordScreen = '/EditPasswordScreen';
  static const kNotificationScreen = '/NotificationScreen';
  static const kContactUsScreen = '/ContactUsScreen';
  static const kJoinUsScreen = '/JoinUsScreen';
  static const kDeleteAccountScreen = '/DeleteAccountScreen';
  static const kOccasionDetailsScreen = '/OccasionDetailsScreen';
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
        path: kLogInOtpScreen,
        builder: (context, state) {
          final email = state.extra as String;
          return LoginOtpScreen(email: email);
        },
      ),
      GoRoute(
        path: kSignUpScreen,
        builder: (context, state) => const SignUpScreen(),
      ),
      GoRoute(
        path: kForgotPasswordScreen,
        builder: (context, state) => const ForgotPasswordScreen(),
      ),
      GoRoute(
        path: kOtpScreen,
        builder: (context, state) {
          final email = state.extra as String;
          return OtpScreen(email: email);
        },
      ),
      GoRoute(
        path: kResetPasswordScreen,
        builder: (context, state) {
          final params = state.extra as Map<String, String>;
          return ResetPasswordScreen(
            email: params['email']!,
            otpCode: params['otpCode']!,
          );
        },
      ),
      GoRoute(
        path: kHomeScreen,
        builder: (context, state) => const HomeeScreen(),
      ),
      GoRoute(
        path: kNewsScreen,
        builder: (context, state) => const NewsScreen(),
      ),
      GoRoute(
        path: kNewsDetailsScreen,
        builder: (context, state) =>
            NewsDetailsScreen(newsEntity: state.extra as NewsEntity),
      ),
      GoRoute(
        path: kOccasionDetailsScreen,
        builder: (context, state) => OccasionDetailsScreen(
          occasionEntity: state.extra as OccasionEntity,
        ),
      ),
      GoRoute(
        path: kAboutUsScreen,
        builder: (context, state) => const AboutUsScreen(),
      ),
      GoRoute(
        path: kFamiliesScreen,
        builder: (context, state) => const TribesScreen(),
      ),
      GoRoute(
        path: kTribeDetailsScreen,
        builder: (context, state) =>
            TribeDetailsScreen(tribesEntity: state.extra as TribesEntity),
      ),
      GoRoute(
        path: kJoinToFamilyScreen,
        builder: (context, state) => const JoinToFamilyScreen(),
      ),
      GoRoute(
        path: kChatScreen,
        builder: (context, state) =>
            ChatScreen(tribesDetailsEntity: state.extra as TribesDetailsEntity),
      ),
      GoRoute(
        path: kProfileScreen,
        builder: (context, state) => const ProfileScreen(),
      ),
      GoRoute(
        path: kEditProfileScreen,
        builder: (context, state) => const EditProfileScreen(),
      ),
      GoRoute(
        path: kEditPasswordScreen,
        builder: (context, state) => const EditPasswordScreen(),
      ),
      GoRoute(
        path: kNotificationScreen,
        builder: (context, state) => const NotificationScreen(),
      ),
      GoRoute(
        path: kContactUsScreen,
        builder: (context, state) => const ContactUsScreen(),
      ),
      GoRoute(
        path: kJoinUsScreen,
        builder: (context, state) => JoinUsScreen(
          tribesDetailsEntity: state.extra as TribesDetailsEntity,
        ),
      ),
      GoRoute(
        path: kDeleteAccountScreen,
        builder: (context, state) => const DeleteAccountScreen(),
      ),
    ],
  );
}
