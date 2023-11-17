import 'package:flutter/material.dart';
import 'package:flutter_web_ui/const/cont_images.dart';
import 'package:flutter_web_ui/ui/right_section.dart';
import 'package:flutter_web_ui/userModel.dart';
import 'package:flutter_web_ui/widget/app_bar.dart';

import 'ui/left_section.dart';

List<UserModel> mediumStaff = [
  UserModel(
      name: "Ashley Mayer",
      image: image1,
      title: "Title",
      subTitle: "Android & Flutter Developer. GDE for Android & Mobile ",
      dateTime: "May 28 · 7 min read"),
  UserModel(
      name: "Sophie Lucido Johnson",
      image: image7,
      title: "Title",
      subTitle: "Android & Flutter Developer. GDE for Android & Mobile ",
      dateTime: "May 20 · 11 min read"),
  UserModel(
      name: "Whitney Alese",
      image: image3,
      title: "Title",
      subTitle: "Android & Flutter Developer. GDE for Android & Mobile ",
      dateTime: "May 15 · 14 min read"),
  UserModel(
      name: "Michelle Wiles",
      image: image4,
      title: "Title",
      subTitle: "Android & Flutter Developer. GDE for Android & Mobile ",
      dateTime: "May 15 · 12 min read"),
  UserModel(
      name: "Tara Haelle",
      image: image5,
      title: "Title",
      subTitle: "Android & Flutter Developer. GDE for Android & Mobile ",
      dateTime: "May 14 · 8 min read"),
  UserModel(
      name: "Daniel Rizea",
      image: image6,
      title: "Title",
      subTitle: "Android & Flutter Developer. GDE for Android & Mobile ",
      dateTime: "May 08 · 15 min read"),
  UserModel(
      name: "Hal H. Harris",
      image: image7,
      title: "Title",
      subTitle: "Android & Flutter Developer. GDE for Android & Mobile ",
      dateTime: "May 02 · 9 min read"),
];

List<String> items = [
  "Android",
  "Android Development",
  "Flutter",
  "Dart",
  "Android Developers",
  "Android App Development",
  "Jetpack Compose",
  "Flutter Development",
  "Mobile App Development",
  "Android Apps",
  "AndroidDev",
  "Android Developers",
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: AppBar().preferredSize, child: const AppBarwidget()),
        body: Row(
          children: [
            Expanded(child: ArticlaListView()),
            if (MediaQuery.of(context).size.width >= 1094) LeftSectionPage(),
          ],
        ));
  }
}
