import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:Khata/pages/home/home.dart';
import 'package:Khata/providers/local_storage.dart';
import 'package:Khata/providers/providers_declaration.dart';
import 'package:Khata/widgets/app_background.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderScope(
    overrides: [
      localStorageProvider.overrideWithValue(
        LocalStorage(await SharedPreferences.getInstance()),
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Money Tracker',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        primarySwatch: Colors.pink,
      ),
      home: const AppBackground(
        child: HomePage(),
      ),
    );
  }
}
