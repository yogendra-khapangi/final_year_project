import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        title: const Text("PROFILE"),
      ),
      body: const SingleChildScrollView(
          child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              child: Center(
                child: Text("Y"),
              ),
            ),
            title: Text("Yogendra khapangi"),
            subtitle: Text("@yogendramagar"),
          ),
          // SizedBox(
          //   height: 20,
          // ),
          ListTile(
            leading: Icon(Icons.design_services),
            title: Text("Bachelor"),
          ),
          ListTile(
            leading: Icon(Icons.email_outlined),
            title: Text("youyogendra@gmail.com"),
          ),
          Divider(
            thickness: 2.0,
            height: 2,
            color: Colors.indigo,
          ),

          SizedBox(
            height: 0,
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Card(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "More Menu",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    leading: Icon(Icons.share, color: Colors.indigo),
                    title: Text("Tell Your Friends"),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.rate_review_outlined,
                      color: Colors.indigo,
                    ),
                    title: Text("Rate Application"),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.verified_user_outlined,
                      color: Colors.indigo,
                    ),
                    title: Text("View Profile"),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.edit_attributes_outlined,
                      color: Colors.indigo,
                    ),
                    title: Text("Edit Profile"),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.info_outline,
                      color: Colors.indigo,
                    ),
                    title: Text("About US"),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.supervised_user_circle,
                      color: Colors.indigo,
                    ),
                    title: Text("Support"),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.security_outlined,
                      color: Colors.indigo,
                    ),
                    title: Text("Privacy Policy"),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.logout_rounded,
                      color: Colors.indigo,
                    ),
                    title: Text("Logout Account"),
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
