import 'package:flutter/material.dart';
import 'package:login_ui/components/my_button.dart';
import 'package:login_ui/components/my_text_field.dart';
import 'package:login_ui/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 35,
              ),
              //Logo
              const Icon(
                Icons.lock,
                size: 100,
              ),
              //Welcome Back
              const SizedBox(
                height: 50,
              ),
              Text(
                "Welcome Back, You have been Missed",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              //User Name TextField

              MyTextField(
                controller: usernameController,
                textHint: 'UserName',
                obsecureText: false,
              ),

              const SizedBox(
                height: 10,
              ),

              //Password TextField

              MyTextField(
                controller: passwordController,
                textHint: 'Password',
                obsecureText: true,
              ),

              const SizedBox(
                height: 10,
              ),

              //Forgot Password

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password",
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              //Signin Button
              MyButton(
                onTap: signUserIn,
              ),
              const SizedBox(
                height: 25,
              ),

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
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text("or Continue with"),
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

              const SizedBox(
                height: 20,
              ),
              //Google + Apple Signin
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(imagePath: "assets/images/google.png"),
                  SizedBox(
                    width: 15,
                  ),
                  SquareTile(imagePath: "assets/images/apple.png"),
                ],
              ),

              const SizedBox(
                height: 15,
              ),

              //Not a member? Register Now

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a Member?"),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Register Now",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
