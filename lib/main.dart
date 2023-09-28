import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:nabeey_app/pages/article_page.dart';
import 'package:nabeey_app/pages/audio_page.dart';
import 'package:nabeey_app/pages/book_page.dart';
import 'package:nabeey_app/pages/category_page.dart';
import 'package:nabeey_app/pages/home_page.dart';
import 'package:nabeey_app/pages/signup_page.dart';
import 'package:nabeey_app/pages/video_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icons_flutter/icons_flutter.dart';

void main() {
  final navigationBloc = NavigationBloc();

  runApp(
    BlocProvider<NavigationBloc>(
      create: (context) => navigationBloc,
      child: const MyApp(),
    ),
  );
}

class NavigationBloc extends Bloc<int, int> {
  NavigationBloc() : super(0);

  Stream<int> mapEventToState(int event) async* {
    yield event;
  }
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
      home: BlocProvider(
        create: (context) => NavigationBloc(),
        child: Builder(
          builder: (context) {
            return Scaffold(
              body: BlocBuilder<NavigationBloc, int>(
                builder: (context, currentPage) {
                  switch (currentPage) {
                    case 0:
                      return const HomePage();
                    case 1:
                      return const CategoryPage();
                    case 2:
                      return const ArticlePage();
                    case 3:
                      return const VideoPage();
                    case 4:
                      return const AudioPage();
                    case 5:
                      return const BookPage();
                    default:
                      return Container();
                  }
                },
              ),
              bottomNavigationBar: Container(
                height: 60.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10.0,
                      spreadRadius: 5.0,
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 10.0,
                      sigmaY: 10.0,
                    ),
                    child: BottomNavigationBar(
                      selectedItemColor: const Color(0xFFF59C16),
                      unselectedItemColor:
                          const Color.fromRGBO(17, 17, 17, 0.5),
                      showUnselectedLabels: true,
                      currentIndex: 0,
                      onTap: (index) {},
                      items: const [
                        BottomNavigationBarItem(
                          icon: Icon(Feather.home),
                          label: 'Home',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Feather.help_circle),
                          label: 'Quiz',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Feather.activity),
                          label: 'Rating',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Feather.user),
                          label: 'Profile',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
