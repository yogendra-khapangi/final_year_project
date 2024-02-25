import 'package:flutter/material.dart';
import 'package:mymath/view/imagetotext(AI%20part).dart';
import 'package:mymath/view/profile_page.dart';
import 'package:mymath/view/show_grid.dart';

class MyFloatingActionButton extends StatelessWidget {
  const MyFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        shape: const CircleBorder(),
        foregroundColor: Colors.white,
        backgroundColor: Colors.indigo,
        focusColor: Colors.indigo,
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ShowGrid()));
        });
  }
}
