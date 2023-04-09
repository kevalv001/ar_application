import 'package:flutter/material.dart';
import 'screens/ar_item_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.blue,
      title: "Ar implementation in flutter app",
      home: ArItemScreen(),
    );
  }
}
