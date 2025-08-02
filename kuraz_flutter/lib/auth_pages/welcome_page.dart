import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:kuraz_flutter/auth_pages/signin_page.dart';
import 'package:kuraz_flutter/auth_pages/signup_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        padding: EdgeInsets.all(screenSize.width / 12),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 231, 12, 34),
              const Color.fromARGB(255, 19, 2, 4),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Icon(CupertinoIcons.pen, color: Colors.white, size: 40),
            Text(
              "Kuraze Tech",
              style: TextStyle(
                color: Colors.white,
                fontSize: screenSize.width / 10.2,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Text(
              "Welcome Back",
              style: TextStyle(
                color: Colors.white,
                fontSize: screenSize.width / 12,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: screenSize.height / 29.6),
              child: Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(
                          Colors.white,
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              screenSize.width / 18,
                            ),
                            side: BorderSide(color: Colors.white, width: 2),
                          ),
                        ),
                      ),
                      onPressed: () => Get.to(() => SigninPage()),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: screenSize.height / 74,
                        ),
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            fontSize: screenSize.width / 22.5,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            screenSize.width / 18,
                          ),
                          side: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                    onPressed: () => Get.to(() => SignupPage()),

                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: screenSize.height / 74,
                      ),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.black,
                          letterSpacing: 0.6,
                          fontSize: screenSize.width / 22.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            Text(
              "Login with Social Media",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1,
                fontSize: screenSize.width / 22.5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(CupertinoIcons.alarm, color: Colors.white, size: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Icon(
                      CupertinoIcons.alarm,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                  Icon(CupertinoIcons.alarm, color: Colors.white, size: 25),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
