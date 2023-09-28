import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';

class ArticleInside extends StatefulWidget {
  const ArticleInside({super.key});

  @override
  State<ArticleInside> createState() => _ArticleInsideState();
}

class _ArticleInsideState extends State<ArticleInside> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: null,
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: ListView(
          children: [
            Container(
              height: 228,
              width: double.infinity,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: NetworkImage(
                        "https://www.figma.com/file/mm3xkDEmbPovfKyv3zHmv4/image/8a5fe34e502a7d34839e56b6fd882a69c56f7ffc"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            const SizedBox(height: 20,),
            const Text(
              "Mavzu#1",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Icon(
                  Feather.calendar,
                  size: 18,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "07.10.2022",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  width: 26,
                ),
                Icon(
                  Feather.eye,
                  size: 18,
                ),
                SizedBox(
                  width: 5,
                ),
                Text("2679",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    )),
                SizedBox(
                  height: 12,
                )
              ],
            ),
            const SizedBox(height: 38,),
            const Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 20,),
            const Text(
              "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 20,),
            const Text(
              "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      )
    );
  }
}
