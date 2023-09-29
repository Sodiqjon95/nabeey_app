import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nabeey_app/pages/article_page.dart';
import 'package:nabeey_app/pages/audio_page.dart';
import 'package:nabeey_app/pages/book_page.dart';
import 'package:nabeey_app/pages/category_page.dart';
import 'package:nabeey_app/pages/home_page.dart';
import 'package:nabeey_app/pages/video_page.dart';
import 'package:nabeey_app/pages/profile_page.dart';
import 'package:nabeey_app/pages/btmNavBar.dart';
import 'package:nabeey_app/pages/quiz_page.dart';
import 'package:nabeey_app/pages/rating_page.dart';

enum NavigationEvent {
  navigateToHomePage,
  navigateToCategoryPage,
  navigateToArticlePage,
  navigateToVideoPage,
  navigateToAudioPage,
  navigateToBookPage,
  navigateToProfilePage,
  navigateToQuizPage,
  navigateToRatingPage,
}

class NavigationBloc extends Bloc<NavigationEvent, int> {
  
  NavigationBloc() : super(0) {
    on<NavigationEvent>(
      (event, emit) {
        if (event == NavigationEvent.navigateToHomePage) {
          (0);
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
        } else if (event == NavigationEvent.navigateToProfilePage) {
          emit(6);
        } else if (event == NavigationEvent.navigateToQuizPage) {
          emit(7);
        } else if (event == NavigationEvent.navigateToRatingPage) {
          emit(8);
        }
      },
    );
    // on<NavigationEvent>(
    //   (event, yield) {
    //     if (event == NavigationEvent.navigateToHomePage) {
    //       (0);
    //     } else if (event == NavigationEvent.navigateToCategoryPage) {
    //       yield(1);
    //     } else if (event == NavigationEvent.navigateToArticlePage) {
    //       yield(2);
    //     } else if (event == NavigationEvent.navigateToVideoPage) {
    //       yield(3);
    //     } else if (event == NavigationEvent.navigateToAudioPage) {
    //       yield(4);
    //     } else if (event == NavigationEvent.navigateToBookPage) {
    //       yield(5);
    //     } else if (event == NavigationEvent.navigateToProfilePage) {
    //       yield(6);
    //     } else if (event == NavigationEvent.navigateToQuizPage) {
    //       yield(7);
    //     } else if (event == NavigationEvent.navigateToRatingPage) {
    //       yield(8);
    //     }
    //   },
    // );
  }
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
                  case 6:
                    return const ProfilePage();
                  case 7:
                    return const QuizPage();
                  case 8:
                    return const RatingPage();
                  default:
                    return Container();
                }
              },
            ),
            bottomNavigationBar: const BtmNavBar(),
          );
        },
      ),
    );
  }
}
