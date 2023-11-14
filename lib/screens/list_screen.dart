import 'package:flutter/material.dart';

import '../models/cat.dart';

final List<Cat> cats = [
  Cat(
    id: "0",
    name: "별님이",
    title: "오늘의 별",
    link: "assets/images/cat_00.jpg",
    likeCount: 130,
    replyCount: 3,
    created: DateTime(2023, 11, 14, 19, 11, 53, 123),
  ),
  Cat(
    id: "1",
    name: "달님이",
    title: "오늘의 달",
    link: "assets/images/cat_01.jpg",
    likeCount: 130,
    replyCount: 3,
    created: DateTime(2023, 11, 14, 19, 11, 53, 123),
  ),
  Cat(
    id: "2",
    name: "햇님이",
    title: "오늘의 해",
    link: "assets/images/cat_02.jpg",
    likeCount: 130,
    replyCount: 3,
    created: DateTime(2023, 11, 14, 19, 11, 53, 123),
  ),
  Cat(
    id: "3",
    name: "해바라기",
    title: "오늘의 꽃",
    link: "assets/images/cat_03.jpg",
    likeCount: 130,
    replyCount: 3,
    created: DateTime(2023, 11, 14, 19, 11, 53, 123),
  ),
  Cat(
    id: "4",
    name: "구름이",
    title: "오늘의 구름",
    link: "assets/images/cat_04.jpg",
    likeCount: 130,
    replyCount: 3,
    created: DateTime(2023, 11, 14, 19, 11, 53, 123),
  ),
  Cat(
    id: "5",
    name: "별님이",
    title: "오늘의 별",
    link: "assets/images/cat_05.jpg",
    likeCount: 130,
    replyCount: 3,
    created: DateTime(2023, 11, 14, 19, 11, 53, 123),
  ),
];

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daily Cats"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt)),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.only(
          top: 10.0,
          left: 10.0,
          right: 10.0,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 1.0,
        ),
        itemCount: cats.length,
        itemBuilder: (_, int index) => GestureDetector(
            onTap: () {},
            child: Image.asset(
              cats[index].link,
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
