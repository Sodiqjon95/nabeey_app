import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:nabeey_app/pages/article_page.dart';
import 'package:nabeey_app/pages/audio_page.dart';
import 'package:nabeey_app/pages/book_page.dart';
import 'package:nabeey_app/pages/category_page.dart';
import 'package:nabeey_app/pages/home_page.dart';
import 'package:nabeey_app/pages/video_page.dart';

enum NavigationEvent {
  navigateToHomePage,
  navigateToCategoryPage,
  navigateToArticlePage,
  navigateToVideoPage,
  navigateToAudioPage,
  navigateToBookPage,
}

class NavigationBloc extends Bloc<NavigationEvent, int> {
  NavigationBloc() : super(0) {
    on<NavigationEvent>((event, emit) {
      if (event == NavigationEvent.navigateToHomePage) {
        emit(0);
      } else if (event == NavigationEvent.navigateToCategoryPage) {
        emit(1);
      } else if (event == NavigationEvent.navigateToArticlePage) {
        emit(2);
      } else if (event == NavigationEvent.navigateToVideoPage) {
        emit(3);
      } else if (event == NavigationEvent.navigateToAudioPage) {
        emit(4);
      } else if (event == NavigationEvent.navigateToBookPage) {
        emit(5);
      }
      // Add event handlers for other navigation events as needed
    });
  }

  // Stream<int> mapEventToState(NavigationEvent event) async* {
  //   // int pageId = state;

  //   if (event == NavigationEvent.navigateToHomePage) {
  //     yield 0;
  //   } else if (event == NavigationEvent.navigateToCategoryPage) {
  //     yield 1;
  //   } else if (event == NavigationEvent.navigateToArticlePage) {
  //     yield 2;
  //   } else if (event == NavigationEvent.navigateToVideoPage) {
  //     yield 3;
  //   } else if (event == NavigationEvent.navigateToAudioPage) {
  //     yield 4;
  //   } else if (event == NavigationEvent.navigateToBookPage) {
  //     yield 5;
  //   }
  // yield pageId;
  // }
}

class BlocProviderIns {
  static final navigationBloc = NavigationBloc();

  returnBPI() {
    return BlocProvider(
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
                    unselectedItemColor: const Color.fromRGBO(17, 17, 17, 0.5),
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
    );
  }
}
