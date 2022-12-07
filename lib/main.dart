import 'package:flutter/material.dart';
import 'package:movie_data/home_api.dart';
import 'package:movie_data/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
