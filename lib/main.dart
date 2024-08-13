import 'package:flutter/material.dart';
import 'package:insta_like_button/insta_like_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String imageUrl =
      "https://images.unsplash.com/photo-1531804226530-70f8004aa44e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Insta Like Button Example"),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: InstaLikeButton(
            image: NetworkImage(imageUrl),
            icon: Icons.favorite_border,
            iconSize: 200,
            iconColor: Colors.red,
            onChanged: () {
              print("Like button is clicked");
            },
          ),
        ));
  }
}
