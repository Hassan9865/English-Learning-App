import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CardSlider extends StatelessWidget {
  final List<String> titles = [
    "Vocabulary Builder",
    "Grammar Lessons",
    "Listening Exercises",
    "Reading Practice",
    "Speaking Practice"
  ];

  final List<String> images = [
    "assets/images/vocabulary.png",
    "assets/images/grammar.png",
    "assets/images/listening.png",
    "assets/images/reading.png",
    "assets/images/speaking.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CarouselSlider(
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height / 3, // Adjust height
          enlargeCenterPage: true,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          enableInfiniteScroll: true,
          viewportFraction: 0.8, // Card size in view
        ),
        items: titles.asMap().entries.map((entry) {
          // int index = entry.key;
          String title = entry.value;
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 8,
                  offset: Offset(0, 4),
                ),
              ],
              // image: DecorationImage(
              //   image: AssetImage(images[index]),
              //   fit: BoxFit.cover,
              // ),
            ),
            child: Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [Colors.black54, Colors.transparent],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
