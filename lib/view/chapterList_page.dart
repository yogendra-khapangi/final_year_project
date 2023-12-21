import 'package:flutter/material.dart';
import 'package:mymath/components/chapter_list.dart';

class MychapterPage extends StatefulWidget {
  const MychapterPage({super.key});

  @override
  State<MychapterPage> createState() => _MychapterPageState();
}

class _MychapterPageState extends State<MychapterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Text(
          "Chapter Lists",
        ),
        backgroundColor: Colors.indigo,
      ),
      body: const Padding(
        padding: EdgeInsets.all(25),
        child: MychapterList(),
      ),
    );
  }
}
