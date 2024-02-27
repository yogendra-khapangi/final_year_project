import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Answer extends StatefulWidget {
  const Answer({super.key});

  @override
  State<Answer> createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        title: const Text("Answer"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text.rich(
                  textAlign: TextAlign.left, TextSpan(text: "Q. dsjfkasjld")),
              const SizedBox(height: 15),
              const TextField(
                  // minLines: 1,
                  maxLines: 10,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Your answer here...",
                      label: Text("Answer"))),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  print("hello");
                },
                child: Container(
                  height: 50,
                  width: 200,
                  color: Colors.indigo,
                  child: const Center(
                      child: Text(
                    "Submit",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 16),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
