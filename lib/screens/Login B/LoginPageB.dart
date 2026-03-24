import 'package:flutter/material.dart';

class LoginpageB extends StatelessWidget {
  const LoginpageB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 80),

              Text(
                "Welcome!",
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -0.5,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Sign up to get started.",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w400,
                ),
              ),

              SizedBox(height: 50),

              // --- Input Fields ---
              buildField("Username", "Nimra"),
              SizedBox(height: 20),
              buildField("Email", "nimra@gmail.com"),
              SizedBox(height: 20),
              buildField("Password", "********", isPassword: true),

              SizedBox(height: 40),


              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF1A1A1A),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: (


                      ) {
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              SizedBox(height: 30),


              Text(
                "or",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  socialIcon(Icons.facebook_outlined),
                  SizedBox(width: 20),
                  socialIcon(Icons.g_mobiledata, size: 30), // Increased size for the 'G'
                  SizedBox(width: 20),
                  socialIcon(Icons.flutter_dash_rounded),
                ],
              ),
              SizedBox(height: 40),

              Text(
                "Already have an account?",
                style: TextStyle(color: Colors.black54, fontSize: 14),
              ),
              GestureDetector(
                onTap: () {

                },
                child: Text(
                  "Log in",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,

                  ),
                ),
              ),

              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }


  Widget socialIcon(IconData icon, {double size = 30}) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.black12),
      ),
      child: Icon(icon, color: Colors.black, size: size),
    );
  }


  Widget buildField(String label, String hint, {bool isPassword = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        SizedBox(height: 8),
        TextField(
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: Colors.grey),
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.black12),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.black, width: 1.5),
            ),
          ),
        ),
      ],
    );
  }
}