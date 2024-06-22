import 'package:flutter/material.dart';
import 'package:flutter_chanakya_niti/controller/theme_provider.dart';
import 'package:flutter_chanakya_niti/home_page.dart';
import 'package:flutter_chanakya_niti/utils/theme/themes.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(const ChanakyaNitiApp());
}


class ChanakyaNitiApp extends StatelessWidget {
  const ChanakyaNitiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,

        // Theme preference
        theme: Themes.lightTheme,
        darkTheme: Themes.darkTheme,
        themeMode: context.watch<ThemeProvider>().isDark ? ThemeMode.dark : ThemeMode.light,

        // Home page
        home: const HomePage(),

      ),
    );
  }
}
