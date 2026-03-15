import 'package:flutter/material.dart';
import 'package:marfahtasks/screens/LoginA/sign_up.dart';

class LoginPageA extends StatelessWidget {
  const LoginPageA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(left: 50, right: 50),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 200),
              Text(
                "Welcome Back!",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  labelText: "Email/UserName",
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.orange, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.orange, width: 2),
                  ),

                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 20,
                  ),
                ),
              ),
              SizedBox(height: 40),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",

                    filled: true,
                    fillColor: Colors.white,

                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 18,
                    ),

                    suffixIcon: const Icon(
                      Icons.check_circle,
                      color: Colors.orange,
                    ),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide.none,
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide.none,
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: const BorderSide(
                        color: Colors.orange,
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {},

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  elevation: 6,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 130,
                    vertical: 14,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),

                child: Text(
                  "Log in",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(height: 50),

              TextButton(
                onPressed: () {},
                child: Text(
                  'Or login',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ),

              ElevatedButton.icon(
                onPressed: () {},

                icon: const Icon(
                  Icons.g_mobiledata,
                  color: Colors.white,
                  size: 24,
                ),

                label: const Text(
                  "LOGIN WITH GOOGLE",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  elevation: 6,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 60,
                    vertical: 14,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(
                height:20,
              ),

              ElevatedButton.icon(
                onPressed: () {},

                icon: const Icon(
                  Icons.g_mobiledata,
                  color: Colors.white,
                  size: 24,
                ),

                label: const Text(
                  "LOGIN WITH FACEBOOK",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  elevation: 6,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 53,
                    vertical: 14,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("Don't have account?"),
                 TextButton(
                   onPressed: () {
                     Navigator.push(
                       context,
                       MaterialPageRoute(
                         builder: (context) =>  SignUpA(),
                       ),
                     );
                   },
                   child: Text(
                     'Sign Up',
                     style: TextStyle(color: Colors.orange, fontSize: 12),
                   ),
                 ),


               ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
