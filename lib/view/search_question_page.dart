import 'package:flutter/material.dart';

class MysearchQ extends StatefulWidget {
  const MysearchQ({super.key});

  @override
  State<MysearchQ> createState() => _MysearchQState();
}

class _MysearchQState extends State<MysearchQ> {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Questions"),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width * .90,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ]),
                child: const TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.indigo,
                      ),
                      hintText: "Search Questions"),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.all(8),
                itemCount: 50,
                itemBuilder: (BuildContext context, int index) {
                  return const ListTile(
                    leading: CircleAvatar(),
                    title: Text("hello world"),
                    subtitle: Text("math"),
                  );
                })
          ],
        ),
      ),
    );
  }
}