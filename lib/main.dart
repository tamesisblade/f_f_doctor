
import 'package:f_front_ecommerce/screens/auth_page.dart';
import 'package:f_front_ecommerce/screens/main_layout.dart';
import 'package:f_front_ecommerce/utils/Configuracion.dart';
import 'package:flutter/material.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  //esto es para push navigator
  static final navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter doctor',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //predefinir input decoration
        inputDecorationTheme: const InputDecorationTheme(
          focusColor: Configuracion.primaryColor,
          border: Configuracion.outlineBorder,
          focusedBorder: Configuracion.focusBorder,
          errorBorder: Configuracion.errorBorder,
          enabledBorder: Configuracion.outlineBorder,
          floatingLabelStyle: TextStyle(color:Configuracion.primaryColor),
          prefixIconColor: Colors.black38,
        ),
        scaffoldBackgroundColor: Colors.white,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Configuracion.primaryColor,
          selectedItemColor: Colors.white,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.grey.shade700,
          elevation: 10,
          type: BottomNavigationBarType.fixed,
        )
      ),
      initialRoute: '/',
      routes:{
        '/':(context) => const Auth(),
        'main':(context) => const MainPage()
      },
      // home: HomePage()
    );
  }
}

