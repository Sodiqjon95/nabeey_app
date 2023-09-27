import 'package:flutter/material.dart';
import 'package:nabeey_app/pages/category_page.dart';

class ContentPage extends StatefulWidget {
  static const String id = 'content_page';
  const ContentPage(this.navigatorKey, this.currentIndex, {super.key});
  final GlobalKey<NavigatorState> navigatorKey;
  final int currentIndex;

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  final List list = [1, 2, 3, 4, 5, 6, 7];

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: widget.navigatorKey,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(
              title: const Text(
                'Nabeey App',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              elevation: 0,
            ),
            body: Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, i) {
                  return AspectRatio(
                    aspectRatio: 1.7,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const CategoryPage(),
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                            image: NetworkImage(
                                "https://www.figma.com/file/mm3xkDEmbPovfKyv3zHmv4/image/4ec532c109d74c7953455693d1feadadd53f92ea"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: const LinearGradient(
                              begin: Alignment.bottomRight,
                              colors: [
                                Color.fromRGBO(0, 0, 0, 1),
                                Color.fromRGBO(0, 0, 0, 0.0),
                              ],
                            ),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Lorem Ipsum',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                'It is a long established fact',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
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
          ),
        );
      },
    );
  }
}
