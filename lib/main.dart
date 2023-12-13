import 'package:flutter/material.dart';
import 'package:mymath/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            // useMaterial3: true,
            primarySwatch: Colors.blue),
        home: const MyHome()
        // home: const MyProfile(),
        // home: const MyTabPage(),
        );
  }
}
      
      
      
      
      
      // Scaffold(
        // extendBodyBehindAppBar: true,
        // appBar: AppBar(
        //   elevation: 0,
        //   backgroundColor: Colors.transparent,
      //  ),
        // body: Expanded(
        //   child: SingleChildScrollView(
        //     child: Column(
        //       children: [
        //         Expanded(
        //           child: Expanded(
        //             child: Stack(
        //               children: [
        //                 Container(
        //                   width: MediaQuery.of(context).size.width,
        //                   height: 200,
        //                   decoration: const BoxDecoration(
        //                       borderRadius: BorderRadius.only(
        //                           bottomLeft: Radius.circular(50),
        //                           bottomRight: Radius.circular(50)),
        //                       gradient: LinearGradient(
        //                           colors: [Colors.blue, Colors.indigo])),
        //                 ),
        //                 // Padding(
        //                 //   padding: const EdgeInsets.all(0.0),
        //                 //   child: GridView.count(
        //                 //     crossAxisCount: 2,
        //                 //     shrinkWrap: true,
        //                 //     children: const [
        //                 //       Card(
        //                 //         child: Center(
        //                 //           child: Text("yogendra"),
        //                 //         ),
        //                 //       ),
        //                 //       Card(
        //                 //         child: Center(
        //                 //           child: Text("yogendra"),
        //                 //         ),
        //                 //       ),
        //                 //       Card(
        //                 //         child: Center(
        //                 //           child: Text("yogendra"),
        //                 //         ),
        //                 //       ),
        //                 //       Card(
        //                 //         child: Center(
        //                 //           child: Text("yogendra"),
        //                 //         ),
        //                 //       ),
        //                 //       Card(
        //                 //         child: Center(
        //                 //           child: Text("yogendra"),
        //                 //         ),
        //                 //       ),
        //                 //       Card(
        //                 //         child: Center(
        //                 //           child: Text("yogendra"),
        //                 //         ),
        //                 //       ),
        //                 //     ],
        //                 //   ),
        //                 // ),
        //               ],
        //             ),
        //           ),
        //         ),

        //         // const ListTile(
        //         //   leading: Icon(Icons.home),
        //         //   title: Text("home"),
        //         // ),
        //         // const ListTile(
        //         //   leading: Icon(Icons.home),
        //         //   title: Text("home"),
        //         // ),
        //         // ListTile(
        //         //   leading: Icon(Icons.home),
        //         //   title: Text("home"),
        //         // ),
        //         // ListTile(
        //         //   leading: Icon(Icons.home),
        //         //   title: Text("home"),
        //         // )
        //         // const SizedBox(height:0,),
        //       ],
        //     ),
        //   ),
        // ),
      
    


