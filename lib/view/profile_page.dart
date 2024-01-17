import 'package:flutter/material.dart';
import 'package:jwt_decode/jwt_decode.dart';

class MyProfile extends StatefulWidget {
  final String token;
  const MyProfile({super.key, required this.token});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  String? username;
  String? email;

  @override
  void initState() {
    super.initState();

    print(widget.token);

    try {
      Map<String, dynamic>? tokenPayload = Jwt.parseJwt(widget.token);

      if (tokenPayload != null) {
        print("Decoded Token Payload: $tokenPayload");
        username = tokenPayload['username'];
        email = tokenPayload['email'];
        print(username);
      } else {
        print("Failed to decode token");
      }
    } catch (e) {
      print("Error decoding token: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        title: const Text("PROFILE"),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          ListTile(
            leading: const CircleAvatar(
              child: Center(
                child: Text("Y"),
              ),
            ),
            title: Text("$username"),
            subtitle: Text("@$username"),
          ),
          // SizedBox(
          //   height: 20,
          // ),
          const ListTile(
            leading: Icon(Icons.design_services),
            title: Text("Bachelor"),
          ),
          ListTile(
            leading: const Icon(Icons.email_outlined),
            title: Text("$email"),
          ),
          const Divider(
            thickness: 2.0,
            height: 2,
            color: Colors.indigo,
          ),

          const SizedBox(
            height: 0,
          ),
          const Padding(
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
