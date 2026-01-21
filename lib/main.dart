import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/core/routes/app_router.dart';

void main() {
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
      child: MaterialApp.router(routerConfig: AppRouter.router),
    );
  }
}
