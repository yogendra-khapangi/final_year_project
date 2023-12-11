import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50)),
                        gradient: LinearGradient(
                            colors: [Colors.blue, Colors.indigo])),
                  ),
                  //  Positioned(
                  //   top: 50,
                  //   child: Padding(
                  //     padding: const EdgeInsets.all(30.0),
                  //     child: GridView.count(
                  //       crossAxisCount: 3,
                  //       shrinkWrap: true,
                  //       children: const [ 
                  //         Card(
                  //           child: Center(
                  //             child: Text("yogendra"),
                  //           ),
                  //         ),
                  //         Card(
                  //           child: Center(
                  //             child: Text("yogendra"),
                  //           ),
                  //         ),
                  //         Card(
                  //           child: Center(
                  //             child: Text("yogendra"),
                  //           ),
                  //         ),
                  //         Card(
                  //           child: Center(
                  //             child: Text("yogendra"),
                  //           ),
                  //         ),
                  //         Card(
                  //           child: Center(
                  //             child: Text("yogendra"),
                  //           ),
                  //         ),
                  //         Card(
                  //           child: Center(
                  //             child: Text("yogendra"),
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // )
                ],
              ),

              // const ListTile(
              //   leading: Icon(Icons.home),
              //   title: Text("home"),
              // ),
              // const ListTile(
              //   leading: Icon(Icons.home),
              //   title: Text("home"),
              // ),
              // ListTile(
              //   leading: Icon(Icons.home),
              //   title: Text("home"),
              // ),
              // ListTile(
              //   leading: Icon(Icons.home),
              //   title: Text("home"),
              // )
              // const SizedBox(height:0,),
            ],
          ),
        ),
      ),
    );
  }
}
