import 'package:flutter/material.dart';
import 'package:mymath/components/float_button.dart';
import 'package:mymath/components/grid_button.dart';
import 'package:mymath/components/mycrousel.dart';
import 'package:mymath/view/profile_page.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int selectedIndex = 0;
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   // backgroundColor: const Color.fromARGB(255, 70, 74, 130),
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      // ),
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(
            children: [
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35),
                    ),
                    gradient:
                        LinearGradient(colors: [Colors.indigo, Colors.blue])),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 40, 0, 0),
                  child: Column(children: [
                    Row(
                      children: [
                        Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width * .5,
                          // color: Colors.red,
                          child: const ListTile(
                            title: Text(
                              "Hi Yogendra,",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                            subtitle: Text(
                              "Let's Start Learning",
                              style:
                                  TextStyle(color: Colors.white, height: .45),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MyProfile()));
                          },
                          child: Container(
                            margin: const EdgeInsets.only(left: 60),
                            height: 40,
                            width: MediaQuery.of(context).size.width * .10,
                            color: Colors.white,
                            child: const Icon(
                              Icons.verified_user,
                              color: Colors.indigo,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            margin: const EdgeInsets.only(left: 12),
                            height: 40,
                            width: MediaQuery.of(context).size.width * .10,
                            color: Colors.white,
                            child: const Icon(
                              Icons.logout_outlined,
                              color: Colors.indigo,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width * .7,
                            // color: Colors.yellow,
                            child: const TextField(
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Colors.indigo,
                                  ),
                                  border: InputBorder.none,
                                  hintText: "Search Questions"),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const MyProfile()));
                            },
                            child: Container(
                              // padding: const EdgeInsets.only(left: 3),
                              margin: const EdgeInsets.only(left: 10),
                              height: 50,
                              width: MediaQuery.of(context).size.width * .14,
                              color: Colors.white,
                              child: const Center(
                                  child: Icon(
                                Icons.menu_book,
                                color: Colors.indigo,
                              )),
                            ),
                          ),
                        ],
                      ),
                    )
                  ]),
                ),
              ),
            ],
          ),
          //carousel slider are here😁
          const SizedBox(
            height: 10,
          ),
          const MyCarousel(),

          //gird are here😊
          const Padding(padding: EdgeInsets.all(25), child: MyGridView()),
          const ListTile(
            title: Text("Class :"),
          ),
          const ListTile(
            title: Text("Class :"),
          ),
          const ListTile(
            title: Text("Class :"),
          ),
          const ListTile(
            title: Text("Class :"),
          ),
          const ListTile(
            title: Text("Class :"),
          ),
          const ListTile(
            title: Text("Class :"),
          ),
          const ListTile(
            title: Text("Class :"),
          ),
        ]),
      ),
      floatingActionButton: const MyFloatingActionButton(),
    );
  }
}




//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Stack(
//               children: [
//                 Container(
//                   width: MediaQuery.of(context).size.width,
//                   height: 250,
//                   decoration: const BoxDecoration(
//                       borderRadius: BorderRadius.only(
//                           bottomLeft: Radius.circular(40),
//                           bottomRight: Radius.circular(40)),
//                       gradient:
//                           LinearGradient(colors: [Colors.blue, Colors.indigo])),
//                   child: Padding(
//                     padding: EdgeInsets.fromLTRB(25, 150, 25, 0),
//                     child: Expanded(
//                       child: Row(
//                         children: [
//                           const TextField(
//                             decoration: InputDecoration(
//                               filled: true,
//                               fillColor: Colors.white,

//                               border: InputBorder.none,
//             const ListTile(
//               leading: Icon(Icons.home),
//               title: Text("home"),
//             ),
//             const ListTile(
//               leading: Icon(Icons.home),
//               title: Text("home"),
//             ),
//           ],))
//         ),)]
//       ),
//       bottomNavigationBar: CircleNavBar(
//         activeIndex: selectedIndex,
//         activeIcons: const [
//           Icon(Icons.person, color: Colors.deepPurple),
//           Icon(Icons.home, color: Colors.deepPurple),
//           Icon(Icons.favorite, color: Colors.deepPurple),
//         ],
//         inactiveIcons: const [
//           Text("My"),
//           Text("Home"),
//           Text("Like"),
//         ],
//         color: Colors.white,
//         circleColor: Colors.white,
//         height: 60,
//         circleWidth: 60,

//         // tabCurve: ,
//         padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
//         cornerRadius: const BorderRadius.only(
//           topLeft: Radius.circular(8),
//           topRight: Radius.circular(8),
//           bottomRight: Radius.circular(24),
//           bottomLeft: Radius.circular(24),
//         ),
//         shadowColor: Colors.deepPurple,
//         circleShadowColor: Colors.deepPurple,
//         elevation: 10,
//         gradient: const LinearGradient(
//           begin: Alignment.topRight,
//           end: Alignment.bottomLeft,
//           colors: [Colors.blue, Colors.indigo],
//         ),
//         circleGradient: const LinearGradient(
//           begin: Alignment.topRight,
//           end: Alignment.bottomLeft,
//           colors: [Colors.blue, Colors.indigo],
//         ),
//       ),
//      
//     )));
//   }
// }
