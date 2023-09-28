import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:nabeey_app/pages/content_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const String id = "home_page";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: [
          ContentPage(_navigatorKey, _currentIndex),
          ContentPage(_navigatorKey, _currentIndex),
          ContentPage(_navigatorKey, _currentIndex),
          ContentPage(_navigatorKey, _currentIndex),
          ContentPage(_navigatorKey, _currentIndex),
        ],
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
              currentIndex: _currentIndex,
              onTap: (index) {
                _pageController.jumpToPage(index);
              },
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
  }
}