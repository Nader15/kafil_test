import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:kafil_test/Utils/app_colors.dart';

import 'Routes/routes.dart';
import 'Utils/Translation/translation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Translation(),
      locale: const Locale('en'),
      fallbackLocale: const Locale('en'),
      title: 'Kafil Test',
      theme: ThemeData(
        dividerTheme: DividerThemeData(thickness: 1,color: AppColors.GREY_SHADE_COLOR),
        checkboxTheme: CheckboxThemeData(side: BorderSide(width: 1,color: AppColors.MAIN_COLOR) ),
        progressIndicatorTheme: ProgressIndicatorThemeData(color: AppColors.MAIN_COLOR),
        appBarTheme: AppBarTheme(foregroundColor: AppColors.BLACK_COLOR,backgroundColor: AppColors.WHITE_COLOR,elevation: 0),
        canvasColor: Colors.transparent,
        fontFamily: "AJ Regular",
      ),
      initialRoute: AppRoutes.splashScreen,
      getPages: AppRoutes.routes,
    );
  }
}
