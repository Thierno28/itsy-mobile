import 'package:flutter/material.dart';
import 'package:itsymobile/screen/livreur/recupererColis/recuperer-colis.dart';
import 'consts/global_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ItSy",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: normalScaffoldColor,
        primaryColor: normalCardColor,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: normalIconsColor,
          ),
          backgroundColor: normalScaffoldColor,
          centerTitle: true,
          titleTextStyle: TextStyle(
              color: normalTextColor,
              fontSize: 22,
              fontWeight: FontWeight.bold),
          elevation: 0,
        ),
        iconTheme: IconThemeData(
          color: normalIconsColor,
        ),

        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.black,
          selectionColor: Colors.blue,
          // selectionHandleColor: Colors.blue,
        ),
        // textTheme: TextTheme()
        // textTheme: Theme.of(context).textTheme.apply(
        //       bodyColor: Colors.black,
        //       displayColor: Colors.black,
        //     ),
        cardColor: normalCardColor,
        brightness: Brightness.light,
        colorScheme: ThemeData()
            .colorScheme
            .copyWith(
              secondary: normalIconsColor,
              brightness: Brightness.light,
            )
            .copyWith(background: normalBackgroundColor),
      ),
      home: RecupererColis(),
    );
  }
}
