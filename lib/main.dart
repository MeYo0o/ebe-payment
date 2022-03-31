import 'package:ebe_payment/core/app_dependencies.dart';
import 'package:ebe_payment/core/constants.dart';
import 'package:ebe_payment/views/main_screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      minTextAdapt: true,
      designSize: const Size(768, 1366),
      builder: () => GetMaterialApp(
        builder: (context, child) {
          ScreenUtil.setContext(context);
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: child!,
          );
        },
        title: 'EBE Payment',
        debugShowCheckedModeBanner: false,
        initialBinding: AppBindings(),
        theme: ThemeData(
          primarySwatch: kPrimaryColor,
        ),
        home: const MainScreen(),
      ),
    );
  }
}
