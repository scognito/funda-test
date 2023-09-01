import 'package:flutter/material.dart';
import 'package:funda_test/locator.dart';
import 'package:funda_test/screens/home/screen_home_view.dart';
import 'package:funda_test/styles.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setupLocators();
  await locator.allReady();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: kBackgroundColor,
          secondary: kBackgroundColor,
        ),
      ),
      home: const ScreenHome(),
    );
  }
}
