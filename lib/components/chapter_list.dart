import 'package:flutter/material.dart';
import 'package:mymath/view/Tapview_page.dart';

class MychapterList extends StatefulWidget {
  const MychapterList({super.key});

  @override
  State<MychapterList> createState() => _MychapterListState();
}

class _MychapterListState extends State<MychapterList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyTabPage()));
            print("clicked");
          },
          child: Stack(
            children: [
              Container(
                height: 45,
                width: MediaQuery.of(context).size.width,
                color: Color.fromARGB(255, 152, 169, 204),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * .19),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Introduction of math',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            height: .7),
                      ),
                      Text(
                        "first chapter",
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 45,
                width: MediaQuery.of(context).size.width * .15,
                color: Colors.indigo,
                child: const Center(child: Text("1")),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyTabPage()));
            print("clicked");
          },
          child: Stack(
            children: [
              Container(
                height: 45,
                width: MediaQuery.of(context).size.width,
                color: Color.fromARGB(255, 152, 169, 204),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * .19),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Introduction of math',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            height: .7),
                      ),
                      Text(
                        "first chapter",
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 45,
                width: MediaQuery.of(context).size.width * .15,
                color: Colors.indigo,
                child: const Center(child: Text("1")),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyTabPage()));
            print("clicked");
          },
          child: Stack(
            children: [
              Container(
                height: 45,
                width: MediaQuery.of(context).size.width,
                color: Color.fromARGB(255, 152, 169, 204),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * .19),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Introduction of math',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            height: .7),
                      ),
                      Text(
                        "first chapter",
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 45,
                width: MediaQuery.of(context).size.width * .15,
                color: Colors.indigo,
                child: const Center(child: Text("1")),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyTabPage()));
            print("clicked");
          },
          child: Stack(
            children: [
              Container(
                height: 45,
                width: MediaQuery.of(context).size.width,
                color: Color.fromARGB(255, 152, 169, 204),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * .19),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Introduction of math',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            height: .7),
                      ),
                      Text(
                        "first chapter",
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 45,
                width: MediaQuery.of(context).size.width * .15,
                color: Colors.indigo,
                child: const Center(child: Text("1")),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyTabPage()));
            print("clicked");
          },
          child: Stack(
            children: [
              Container(
                height: 45,
                width: MediaQuery.of(context).size.width,
                color: Color.fromARGB(255, 152, 169, 204),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * .19),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Introduction of math',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            height: .7),
                      ),
                      Text(
                        "first chapter",
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 45,
                width: MediaQuery.of(context).size.width * .15,
                color: Colors.indigo,
                child: const Center(child: Text("1")),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
