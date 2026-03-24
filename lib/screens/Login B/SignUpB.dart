import 'package:flutter/material.dart';

class SignupB extends StatefulWidget {
  const SignupB({super.key});

  @override
  State<SignupB> createState() => _SignupBState();
}

class _SignupBState extends State<SignupB> {

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),


                Row(
                  children: [
                    Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0D2137),
                      ),
                    ),
                    Text(
                      "  /  ",
                      style: TextStyle(fontSize: 35, color: Color(0xFF0D2137)),
                    ),
                    Text(
                      "Log In",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  "To access all the features",
                  style: TextStyle(color: Color(0xFF0D2137), fontSize: 18),
                ),

                SizedBox(height: 50),

                Center(
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 55,
                        backgroundColor: Colors.grey[200],
                        child: Icon(Icons.person_outline, size: 60, color: Colors.grey[500]),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 5,
                        child: CircleAvatar(
                          radius: 18,
                          backgroundColor: Color(0xFF0D2137),
                          child: Icon(Icons.add, color: Colors.white, size: 20),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 50),

                Text(
                  "Email",
                  style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF0D2137)),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Enter your email",
                    hintStyle: TextStyle(color: Colors.grey[400]),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[300]!),
                    ),
                  ),
                ),

                SizedBox(height: 30),
                
                Text(
                  "Password",
                  style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF0D2137)),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter your password",
                    hintStyle: TextStyle(color: Colors.grey[400]),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[300]!),
                    ),
                  ),
                ),

                SizedBox(height: 20),

                Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      activeColor: Color(0xFF0D2137),
                      onChanged: (val) {
                        setState(() {
                          isChecked = val!;
                        });
                      },
                    ),
                    Expanded(
                      child: Text(
                        "I agree to all the Terms & Conditions",
                        style: TextStyle(fontSize: 12, color: Colors.grey[900]),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 40),


                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF0D2137),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 4,
                    ),
                      onPressed: (){},




                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

                SizedBox(height: 20),

                Center(
                  child: Column(
                    children: [
                      Text("or", style: TextStyle(color: Colors.grey[700] ,fontSize: 18,)),
                      SizedBox(height: 15),
                      Text.rich(
                        TextSpan(
                          text: "Sign up with ",
                          style: TextStyle(color: Colors.black),
                          children: [
                            TextSpan(
                              text: "Google",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}