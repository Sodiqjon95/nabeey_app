import 'package:flutter/material.dart';
import 'package:nabeey_app/pages/article_page.dart';
import 'package:nabeey_app/pages/audio_page.dart';
import 'package:nabeey_app/pages/book_page.dart';
import 'package:nabeey_app/pages/category_page.dart';
import 'package:nabeey_app/pages/home_page.dart';
import 'package:nabeey_app/pages/signup_page.dart';
import 'package:nabeey_app/pages/video_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nabeey_app/services/bloc_service.dart';

void main() {
  runApp(
    BlocProvider<NavigationBloc>(
      create: (context) => BlocProviderIns.navigationBloc,
      child: const MyApp(),
    ),
  );
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
      home: BlocProviderIns().returnBPI(),
    );
  }
}
