import 'package:flutter/material.dart';

class MyTabPage extends StatefulWidget {
  const MyTabPage({super.key});

  @override
  State<MyTabPage> createState() => _MyTabPageState();
}

class _MyTabPageState extends State<MyTabPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
          bottom: const TabBar(
            isScrollable: true,
            dividerColor: Colors.white,
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
            tabs: [
              Tab(
                text: "SYLLABUS",
              ),
              Tab(
                text: "CHAPTERS",
              ),
              Tab(
                text: "TEXT BOOK",
              ),
              Tab(
                text: "QUESTION BANK",
              ),
              Tab(
                text: "QUESTIONS",
              ),
              Tab(
                text: "PRACTICAL",
              ),
              Tab(
                text: "VIVA QUESTIONS",
              ),
            ],
          ),
          title: const ListTile(
            title: Text(
              "Subject",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            subtitle: Text(
              "Math",
              style: TextStyle(
                  color: Color.fromARGB(255, 196, 189, 189),
                  fontSize: 15,
                  height: .5),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
            Icon(Icons.directions_bike),
            Icon(Icons.directions_bike),
            Icon(Icons.directions_bike),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
