import 'package:flutter/material.dart';
import 'package:xtendly_exam/presentation/screens/home_page.dart';
import 'package:xtendly_exam/utils/theme/app_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'Xtendly exam',
        theme: BaseThemeData.getInstance().getTheme(),
        home: const HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
