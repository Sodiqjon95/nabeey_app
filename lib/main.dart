import 'package:flutter/material.dart';
import 'package:nabeey_app/pages/category_page.dart';
import 'package:nabeey_app/pages/content_page.dart';
import 'package:nabeey_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nabeey App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
      routes: {
        HomePage.id: (context) => const HomePage(),
        ContentPage.id: (context) => const CategoryPage(),
        CategoryPage.id: (context) => const CategoryPage(),
      },
    );
  }
}
