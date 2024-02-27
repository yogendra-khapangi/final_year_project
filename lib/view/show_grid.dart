import 'package:flutter/material.dart';

import 'package:mymath/view/chapterList_page.dart';
import 'package:mymath/view/imagetotext(AI%20part).dart';
import 'package:mymath/view/mathFormulas.dart';

class ShowGrid extends StatelessWidget {
  ShowGrid({super.key});
  final List<String> gridContent = [
    'Img to Text',
    "OCR",

    // Add more items as needed
  ];
  static const gridicon = <IconData>[
    Icons.bookmark_add,
    Icons.bookmark_add,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Feature"),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // Number of columns in the grid
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
                print(gridContent[index]);
                if (gridContent[index] == "Img to Text") {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyImageToText()));
                } else {
                  print("nothing");
                }
              },
              child: Container(
                height: 30,
                width: 30,
                color: Colors.indigo,
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
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(gridContent[index],
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            height: .5,
                            color: Colors.white)),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
