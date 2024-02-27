import 'package:flutter/material.dart';

class AddQs extends StatelessWidget {
  AddQs({super.key});
  TextEditingController qstext = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        title: const Text("Ask Question !!"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
                  keyboardType: TextInputType.text,
                  controller: qstext,
                  decoration: const InputDecoration(
                    labelText: "Class",
                    border: OutlineInputBorder(),
                  )),
              const SizedBox(
                height: 20,
              ),
              TextField(
                  keyboardType: TextInputType.text,
                  controller: qstext,
                  decoration: const InputDecoration(
                    labelText: "Your name",
                    border: OutlineInputBorder(),
                  )),
              const SizedBox(
                height: 20,
              ),
              TextField(
                  keyboardType: TextInputType.text,
                  controller: qstext,
                  decoration: const InputDecoration(
                    labelText: "Chapter name",
                    border: OutlineInputBorder(),
                  )),
              const SizedBox(
                height: 20,
              ),
              TextField(
                  maxLength: 11,
                  keyboardType: TextInputType.text,
                  controller: qstext,
                  decoration: const InputDecoration(
                    labelText: "Question",
                    border: OutlineInputBorder(),
                  )),
              const SizedBox(
                height: 20,
              ),

              //submit button
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
