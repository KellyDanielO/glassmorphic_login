import 'dart:ui';

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/1.jpeg"), fit: BoxFit.cover),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
          child: Container(
            width: width,
            height: height,
            decoration:
                const BoxDecoration(color: Color.fromRGBO(255, 255, 255, .3)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: height * .9,
                    width: width * .9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Log into",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Text(
                          "Your account",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: height * .05),
                        const TextField(
                          cursorColor: Colors.white,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                            hintText: 'Username',
                            hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1.5, color: Colors.white)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1.5, color: Colors.white)),
                          ),
                        ),
                        SizedBox(height: height * .02),
                        const TextField(
                          obscureText: true,
                          cursorColor: Colors.white,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1.5, color: Colors.white)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1.5, color: Colors.white)),
                          ),
                        ),
                        SizedBox(height: height * .02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  value: isChecked,
                                  onChanged: (value) =>
                                      setState(() => isChecked = value!),
                                  checkColor: Colors.black,
                                  fillColor: const MaterialStatePropertyAll(
                                      Colors.white),
                                ),
                                const Text(
                                  "Remember me? ",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            const Text(
                              "Forgot password? ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: height * .02),
                        Container(
                          width: width * .9,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(25)
                          ),
                          alignment: Alignment.center,
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                        SizedBox(height: height * .02),
                        Container(
                          width: width * .9,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25)
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.facebook_outlined),
                                Text(
                                  "Login with facebook",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: height * .1,
                    width: width * .9,
                    alignment: Alignment.bottomLeft,
                    child: const Text(
                      "Don't have an account? ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}