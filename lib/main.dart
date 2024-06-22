import 'package:flutter/material.dart';
import 'package:flutter_chanakya_niti/controller/home_provider.dart';
import 'package:flutter_chanakya_niti/controller/theme_provider.dart';
import 'package:flutter_chanakya_niti/pages/splash%20page/view/splash_page.dart';
import 'package:flutter_chanakya_niti/utils/constants.dart';
import 'package:flutter_chanakya_niti/utils/theme/themes.dart';
import 'package:provider/provider.dart';

void main(){

  WidgetsFlutterBinding.ensureInitialized();
  ThemeProvider themeProvider = ThemeProvider();
  HomeProvider homeProvider = HomeProvider();

  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => themeProvider,),
        ChangeNotifierProvider(create: (context) => homeProvider,)
      ],
      child: const ChanakyaNitiApp()));
}


class ChanakyaNitiApp extends StatelessWidget {
  const ChanakyaNitiApp({super.key});

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // Theme preference
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      themeMode: context.watch<ThemeProvider>().isDark ? ThemeMode.dark : ThemeMode.light,

      // Home page
      home: const SplashPage(),

    );
  }
}
