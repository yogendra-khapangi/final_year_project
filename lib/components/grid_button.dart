import 'package:flutter/material.dart';
import 'package:mymath/view/Tapview_page.dart';

class MyGridView extends StatelessWidget {
  const MyGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        padding: EdgeInsets.zero, // set padding to zero
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 4,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MyTabPage()));
            },
            child: Container(
              height: 30,
              width: 30,
              color: const Color.fromARGB(255, 234, 235, 237),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    // color: Colors.red,
                    height: 45,
                    width: 45,
                    child: Icon(
                      Icons.all_inbox,
                      color: Colors.indigo,
                      size: 45,
                    ),
                  ),
                  Text("Class",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                  Text("five",
                      style: TextStyle(
                        height: .5,
                        fontSize: 10,
                      )),
                ],
              ),
            ),
          ),
          Container(
            height: 30,
            width: 30,
            color: Colors.indigo,
          ),
          Container(
            height: 30,
            width: 30,
            color: const Color.fromARGB(255, 107, 112, 140),
          ),
          Container(
            height: 30,
            width: 30,
            color: const Color.fromARGB(255, 140, 156, 249),
          ),
          Container(
            height: 30,
            width: 30,
            color: Colors.indigo,
          ),
        ]);
  }
}
