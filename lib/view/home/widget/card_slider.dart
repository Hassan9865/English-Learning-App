import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CardSlider extends StatelessWidget {
  final List<String> titles = [
    "Vocabulary Builder :\n\"Expand your word bank daily to unlock clearer communication.\"",
    "Grammar Lessons :\n\"Master the rules of language to express ideas with confidence.\"",
    "Listening Exercises & Reading Practice :\n\"Listen actively and read deeply to strengthen comprehension.\"",
    "Quizzes :\n\"Test your knowledge regularly to track progress and improve retention.\"",
    "Speaking Practice :\n\"Speak often and boldly practice makes fluent!\"",
  ];

  final List<String> images = [
    "assets/eng.jpg",
    "assets/eng.jpg",
    "assets/eng.jpg",
    "assets/eng.jpg",
    "assets/eng.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height / 3, // Adjust height
        enlargeCenterPage: true,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        enableInfiniteScroll: true,
        viewportFraction: 0.8, // Card size in view
      ),
      items: titles.asMap().entries.map((entry) {
        int index = entry.key;
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
            image: DecorationImage(
              image: AssetImage(images[index]),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [
                  const Color.fromARGB(255, 98, 121, 216),
                  const Color.fromARGB(255, 216, 145, 52)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomRight,
              ),
            ),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width / 17,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
