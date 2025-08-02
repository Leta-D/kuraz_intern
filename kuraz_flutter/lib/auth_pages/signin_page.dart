import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:kuraz_flutter/auth_pages/auth_controller.dart';
import 'package:kuraz_flutter/auth_pages/signup_page.dart';

class SigninPage extends StatelessWidget {
  SigninPage({super.key});

  final controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: screenSize.width,
            height: screenSize.height,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color.fromARGB(255, 235, 1, 40),
                  const Color.fromARGB(255, 19, 2, 4),
                ],
              ),
            ),
            child: Text(
              "Hello \nSign in!",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
          Container(
            width: screenSize.width,
            margin: EdgeInsets.only(top: 150),
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
              border: Border.all(color: Colors.white),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: TextField(
                    decoration: InputDecoration(
                      label: Text(
                        "Gmail",
                        style: TextStyle(
                          fontSize: 18,
                          color: const Color.fromARGB(255, 255, 7, 90),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Obx(
                    () => TextField(
                      decoration: InputDecoration(
                        suffix: InkWell(
                          onTap: () {
                            controller.showPasswd.value =
                                !controller.showPasswd.value;
                          },
                          child: Icon(
                            !controller.showPasswd.value
                                ? CupertinoIcons.eye
                                : CupertinoIcons.eye_slash,
                            size: 25,
                          ),
                        ),
                        label: Text(
                          "Password",
                          style: TextStyle(
                            fontSize: 18,
                            color: const Color.fromARGB(255, 255, 7, 90),
                          ),
                        ),
                      ),
                      obscureText: !controller.showPasswd.value,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forget password?",
                        style: TextStyle(
                          fontSize: 16,
                          color: const Color.fromARGB(255, 54, 1, 19),
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              colors: [
                                const Color.fromARGB(255, 206, 1, 35),
                                const Color.fromARGB(255, 19, 2, 4),
                              ],
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Sign in",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Spacer(),
                Align(
                  alignment: Alignment.centerRight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Don't have account?",
                        style: TextStyle(
                          fontSize: 16,
                          color: const Color.fromARGB(255, 78, 77, 77),
                        ),
                      ),
                      TextButton(
                        onPressed: () => Get.off(() => SignupPage()),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 71, 1, 19),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
