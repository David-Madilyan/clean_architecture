import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:health_connect/common/bindings.dart';
import 'package:health_connect/common/pages.dart';
import 'package:health_connect/common/theme.dart';
import 'package:health_connect/common/utils.dart';
import 'package:health_connect/screens/intro/intro_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      path: 'assets/translations',
      supportedLocales:  [Locale('en'), Locale('ru')],
      fallbackLocale: Locale('ru'),
      startLocale: Locale('ru'),
      child: MyApp()
  )
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(activeDarkTheme() ? overlayStyleDark : overlayStyleLight);
    return GetMaterialApp(
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      //darkTheme: darkThemeData(context),
      theme: lightThemeData(context),
      initialBinding: ControllersBinding(),
      getPages: Pages.list,
      debugShowCheckedModeBanner: false,
      title: tr('app-name'),
      home: IntroPage(),
    );
  }
}
