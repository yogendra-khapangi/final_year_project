import 'package:flutter/material.dart';
import 'package:mymath/view/Tapview_page.dart';
import 'package:mymath/view/chapterList_page.dart';

class MyGridView extends StatelessWidget {
  MyGridView({super.key});
  final List<String> gridContent = [
    'Five(5)',
    'Six(6)',
    'Seven(7)',
    'Eight(8)',
    'Nine(9)',
    'Ten(10)',
    'Eleven(11)',
    'Twelve(12)',
    // Add more items as needed
  ];
  static const gridicon = <IconData>[
    Icons.school,
    Icons.palette,
    Icons.quiz,
    Icons.keyboard,
    Icons.computer,
    Icons.radio,
    Icons.explore,
    Icons.auto_awesome_motion,
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4, // Number of columns in the grid
        crossAxisSpacing: 8, // Spacing between columns
        mainAxisSpacing: 8, // Spacing between rows
      ),
      padding: EdgeInsets.zero, // set padding to zero
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: gridContent.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MychapterPage()));
          },
          child: Container(
            height: 30,
            width: 30,
            color: const Color.fromARGB(255, 234, 235, 237),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  // color: Colors.red,
                  height: 40,
                  width: 40,
                  child: Icon(
                    gridicon[index],
                    color: Colors.indigo,
                    size: 35,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text("Class",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      height: .5,
                    )),
                Text(gridContent[index],
                    style: const TextStyle(
                      // height: .5,
                      fontSize: 11,
                    )),
              ],
            ),
          ),
        );
      },
    );
  }
}
