import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

ThemeData lightThemeData(BuildContext context){
  return ThemeData.light().copyWith(
    textTheme: TextTheme(
      headline1: TextStyle(fontSize: 16, fontFamily: "nunito",fontWeight: FontWeight.w200),        //Texts
      overline: TextStyle(fontSize: 16, fontFamily: "nunito",fontWeight: FontWeight.w200),         //Texts
      headline2: TextStyle(fontSize: 18, fontFamily: "nunito", fontWeight: FontWeight.w400),       //TextFormFields//TextFormFields
      button: TextStyle(fontSize: 16, fontFamily: "bellota", fontWeight: FontWeight.w400),         //Buttons
      subtitle1: TextStyle(fontSize: 20.0, fontFamily: "rubik", fontWeight: FontWeight.w600),      //AppBar
    ),
    brightness: Brightness.light,
    // scaffoldBackgroundColor: scaffoldBackgroundColorLight,
    // appBarTheme: appBarThemeLight,
    // iconTheme: IconThemeData(color: iconThemeLight),
    // colorScheme: colorSchemeLight,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      // backgroundColor: bottomNavBarLight,
      // elevation: 3,
      // selectedItemColor: selectedItemColorLight,
      // unselectedItemColor: unselectedItemColorLight,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
    ),
  );
}

final overlayStyleLight = SystemUiOverlayStyle.light.copyWith(
    // statusBarColor: statusBarColorLight,
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.light,
    // systemNavigationBarColor: systemNavigationBarColorLight,
    systemNavigationBarIconBrightness: Brightness.light);

final overlayStyleDark = SystemUiOverlayStyle.dark.copyWith(
    // statusBarColor: statusBarColorDark,
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.dark,
    // systemNavigationBarColor: systemNavigationBarColorDark,
    systemNavigationBarIconBrightness: Brightness.dark);
