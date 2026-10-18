
import 'package:flutter/material.dart';

void main() {
  runApp(Login());
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();

  }
  class _LoginState extends State<Login> {
    @override
    Widget build(BuildContext context) {
      return (
        MaterialApp(
          debugShowCheckedModeBanner: false,
          
          home: Scaffold(
            backgroundColor: const Color(0xFF111627),
            appBar: AppBar(
              title: Text("LifeVault",
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
                  color: Color.fromARGB(255, 19, 26, 45),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  children: [
                    Text("Welcome back",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 231, 230, 230),
                      fontWeight: FontWeight.w500,
                      fontSize: 28,
                    ),),
                    SizedBox(height: 15,),
                    Text("Login your account now", style: TextStyle(color: Color.fromARGB(255, 231, 230, 230).withValues(alpha: 0.7) ),),
                    SizedBox(height: 60),
                    TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: "Email Address",
                        labelStyle: TextStyle(
                          color: Colors.grey,
                        ),
                      hintText: "Enter your email address",
                      filled: true,
                      fillColor: Color(0xFF111627),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      )
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      obscureText: true,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        hintText: "Enter your password",
                        filled: true,
                        fillColor: Color(0xFF111627),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        )
                      )
                      
                    ),
                    SizedBox(height: 20,),
                    SizedBox(
                      width: 340,
                      height: 40,
                     child: ElevatedButton(onPressed: (){},
                     style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(20)
                      )
                     ),
                      child: Text("Login", style: TextStyle(
                        color: Color.fromARGB(255, 231, 230, 230),
                        fontWeight: FontWeight.bold,
                      ),
                      )
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text("Or", style: TextStyle(color: Colors.grey),),
                    SizedBox(height: 15,),
                    SizedBox(
                      width: 340,
                      height: 40,
                      child: ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(20),
                      ),
                    ), child: Text("Countinue with Google", style: TextStyle(
                     color: Color.fromARGB(255, 231, 230, 230),
                     fontWeight: FontWeight.bold, 
                     ),
                     )
                     ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("New here? ", style: TextStyle(color: Colors.grey),),
                        SizedBox(width: 10,),
                        Text("Signup now", style: TextStyle(color: Colors.blue),),
                      ],
                    )
                  ],
                ),

              ),
            ),
          ),

        )
      );
      
    }
  }


