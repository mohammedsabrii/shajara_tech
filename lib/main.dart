import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/routes/app_router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shajara_tech/core/service/service_locator.dart';
import 'package:shajara_tech/features/forgot_password/presentation/manager/Cubits/check_reset_code_cubit/check_reset_code_cubit.dart';
import 'package:shajara_tech/features/forgot_password/presentation/manager/Cubits/reset_password_cubit/reset_password_cubit.dart';
import 'package:shajara_tech/features/forgot_password/presentation/manager/Cubits/send_otp_code_cubit/send_otp_code_cubit.dart';

void main() async {
  await initServiceLocator();
  runApp(const ShajaraTech());
}

class ShajaraTech extends StatelessWidget {
  const ShajaraTech({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 750),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => sl<CheckResetCodeCubit>()),
          BlocProvider(create: (context) => sl<ResetPasswordCubit>()),
          BlocProvider(create: (context) => sl<SendOtpCodeCubit>()),
        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,

          locale: const Locale('ar'),

          supportedLocales: const [Locale('ar'), Locale('en')],

          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],

          routerConfig: AppRouter.router,
        ),
      ),
    );
  }
}
