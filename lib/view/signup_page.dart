import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:mymath/components/logincomp/my_button.dart';
import 'package:mymath/components/logincomp/my_textfield.dart';
import 'package:mymath/components/logincomp/square_tile.dart';
import 'package:mymath/view/login_page.dart';
import 'package:http/http.dart' as http;

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  // text editing controllers
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController myclasscontroller = TextEditingController();
  Future<void> registerUser(String username, String password, String email,
      String phone, String myclass) async {
    final response = await http.post(
      Uri.parse('http://10.0.2.2:8000/register/'),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, String>{
        'username': username,
        'password': password,
        'email': email,
        'phone': phone,
        'mystd': myclass,
      }),
    );

    if (response.statusCode == 201) {
      print('user singup');
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    } else {
      print("error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),

                // logo
                const Icon(
                  Icons.lock,
                  size: 100,
                  color: Colors.indigo,
                ),

                const SizedBox(height: 50),

                // welcome back, you've been missed!
                Text(
                  'SignUp First !',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 25),

                // username textfield
                MyTextField(
                  controller: usernamecontroller,
                  hintText: 'Username',
                  obscureText: false,
                ),

                const SizedBox(height: 10),

                // password textfield
                MyTextField(
                  controller: passwordcontroller,
                  hintText: 'Password',
                  obscureText: true,
                ),

                const SizedBox(height: 10),
                //email
                MyTextField(
                  controller: emailcontroller,
                  hintText: 'Email',
                  obscureText: false,
                ),

                const SizedBox(height: 10),
                //phone
                MyTextField(
                  controller: phonecontroller,
                  hintText: 'phone',
                  obscureText: false,
                ),
                const SizedBox(height: 10),
                //class
                MyTextField(
                  controller: myclasscontroller,
                  hintText: 'Class',
                  obscureText: false,
                ),

                const SizedBox(height: 10),

                const SizedBox(height: 10),

                // forgot password?
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                        child: const Text(
                          'Already Have an account?',
                          style: TextStyle(color: Colors.blue),
                        ),
                      )
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                // sign in button

                GestureDetector(
                  onTap: () {
                    registerUser(
                      usernamecontroller.text.toString(),
                      passwordcontroller.text.toString(),
                      emailcontroller.text.toString(),
                      phonecontroller.text.toString(),
                      myclasscontroller.text.toString(),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(25),
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                      child: Text(
                        "SignUp",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),

                // google + apple sign in buttons
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // google button

                    SquareTile(imagePath: 'assets/images/loginimgs/google.png'),

                    SizedBox(width: 25),

                    // apple button
                    SquareTile(imagePath: 'assets/images/loginimgs/apple.png')
                  ],
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
