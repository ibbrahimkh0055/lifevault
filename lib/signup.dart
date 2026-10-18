import 'package:flutter/material.dart';

void main() {
  runApp(Signup());
}

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

int validate() {
  return 0;
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF111627),
        appBar: AppBar(
          title: Text(
            "LifeVault",
            style: TextStyle(
              color: const Color.fromARGB(255, 231, 230, 230),
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: const Color(0xFF111627),
          centerTitle: true,
        ),

        body: Center(
          child: Container(
            width: 400,
            margin: EdgeInsets.only(top: 10, bottom: 20),
            padding: EdgeInsets.only(top: 30, right: 40, left: 40),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 19, 26, 45),
            ),
            child: Column(
              children: [
                Text(
                  "Welcome",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 231, 230, 230),
                    fontWeight: FontWeight.w500,
                    fontSize: 34,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  "Create your account now",
                  style: TextStyle(
                    color: const Color.fromARGB(
                      255,
                      231,
                      230,
                      230,
                    ).withValues(alpha: 0.7),
                  ),
                ),
                SizedBox(height: 20),

                TextField(
                  style: TextStyle(color: Color.fromARGB(255, 231, 230, 230)),
                  decoration: InputDecoration(
                    labelText: "Email Address",
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    hintText: "Enter your email address",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    filled: true,
                    fillColor: Color(0xFF111627),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  obscureText: true,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: const TextStyle(color: Colors.grey),
                    hintText: "Enter your password",
                    filled: true,
                    fillColor: const Color(0xFF111627),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  obscureText: true,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: "Confrom password",
                    labelStyle: const TextStyle(color: Colors.grey),
                    hintText: "Enter your password again",
                    filled: true,
                    fillColor: const Color(0xFF111627),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 340,
                  height: 40,

                  child: ElevatedButton(
                    onPressed: validate,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(20),
                      ),
                    ),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 231, 230, 230),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Text("Or", style: TextStyle(color: Colors.grey),),
                 SizedBox(height: 10),
                SizedBox(
                  width: 340,
                  height: 40,

                  child: ElevatedButton(
                    onPressed: validate,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(20),
                      ),
                    ),
                    child: Text(
                      "Countinue with Google",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 231, 230, 230),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account", style: TextStyle(color: Colors.grey),),
                    SizedBox(width: 10,),
                    Text("login  now", style: TextStyle(color: Colors.blue),)

                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
