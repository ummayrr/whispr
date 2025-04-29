import 'dart:async';
import 'login.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenStateState();
}

class _SplashScreenStateState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => SecondScreen()));
    });
  }

// Image.asset('assets/images/image 18.png'),
// Image.asset('assets/images/chat-conversation.png'),
// Text('Chat App'),
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      color: Color(0xFF36B8B8),
      child: Stack(
        children: [
          Image.asset(
            'assets/images/image 18.png',
            height: double.infinity,
            width: double.infinity,
          ),
          Center(
              child: Image.asset(
            'assets/images/chat-conversation.png',
            color: Colors.white,
            fit: BoxFit.fill,
          )),
          Padding(
            padding: const EdgeInsets.only(top: 190.0),
            child: Center(
                child: Text('Chat App',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ))),
          )
        ],
      ),
    ));
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xFFE9FEFE),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 140.0),
              child: Image.asset(
                'assets/images/Add_Comments-transformed.png',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Container(
                child: Column(
                  children: [
                    Text(
                      'Welcome to chatApp,',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w500),
                    ),
                    Text('A great friend to chat',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w500)),
                    Text('with you',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w500)),
                    Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 20.0, top: 20, left: 157),
                            child: Container(
                              height: 13,
                              width: 13,
                              decoration: BoxDecoration(
                                  color: Color(0xFF36B8B8),
                                  borderRadius: BorderRadius.circular(6.5)),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 20.0, top: 20),
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                  color: Color(0xFF36B8B8),
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 20.0, top: 20),
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                  color: Color(0xFF36B8B8),
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 35.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => ThirdPage())));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 70.0, right: 70),
                          child: Text('Go to next page'),
                        ),
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(18)),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xFF36B8B8)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40),
                                    side:
                                        BorderSide(color: Color(0xFF36B8B8))))),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      color: Color(0xFFE9FEFE),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 140.0),
            child: Image.asset(
              'assets/images/image 20.png',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Container(
              child: Column(
                children: [
                  Text(
                    'If you are confused about ',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500),
                  ),
                  Text('what to do just open ',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w500)),
                  Text('ChatAapp',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w500)),
                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 20.0, top: 20, left: 157),
                          child: Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                                color: Color(0xFF36B8B8),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0, top: 20),
                          child: Container(
                            height: 13,
                            width: 13,
                            decoration: BoxDecoration(
                                color: Color(0xFF36B8B8),
                                borderRadius: BorderRadius.circular(6.5)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0, top: 20),
                          child: Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                                color: Color(0xFF36B8B8),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => FourthScreen())));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 70.0, right: 70),
                        child: Text('Go to next page'),
                      ),
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.all(18)),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFF36B8B8)),
                          shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                  side: BorderSide(color: Color(0xFF36B8B8))))),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      color: Color(0xFFE9FEFE),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 140.0),
            child: Image.asset(
              'assets/images/image 21.png',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Container(
              child: Column(
                children: [
                  Text(
                    'If you are confused about ',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500),
                  ),
                  Text('what to do just open ',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w500)),
                  Text('ChatAapp',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w500)),
                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 20.0, top: 20, left: 157),
                          child: Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                                color: Color(0xFF36B8B8),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0, top: 20),
                          child: Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                                color: Color(0xFF36B8B8),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0, top: 20),
                          child: Container(
                            height: 13,
                            width: 13,
                            decoration: BoxDecoration(
                                color: Color(0xFF36B8B8),
                                borderRadius: BorderRadius.circular(6.5)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => LoginScreer())));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 70.0, right: 70),
                        child: Text('Go to next page'),
                      ),
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            EdgeInsets.all(18)),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFF36B8B8)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                            side: BorderSide(
                              color: Color(0xFF36B8B8),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
