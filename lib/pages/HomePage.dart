import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../util/emotion_face.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const Text(
                            "Hi Umar",
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "17 july 1996",
                            style: TextStyle(
                              color: Colors.blue[200],
                            ),
                          )
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12)),
                        padding: const EdgeInsets.all(12),
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Search",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "How do you feel?",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          EmotionFace(emotionFace: "😀"),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Happy",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          EmotionFace(emotionFace: "🥲"),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Sad",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          EmotionFace(emotionFace: "😍"),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Love",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          EmotionFace(emotionFace: "🥲"),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Cry",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Expanded(
              child: Container(
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
