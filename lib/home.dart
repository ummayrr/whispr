import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'messaging.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color.fromARGB(255, 1, 236, 253),
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Messages',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 60,
              width: double.infinity,
              child: Container(
                margin:
                    EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 9),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon:
                        // padding: const EdgeInsets.only(right:25.0),
                        Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.white,
                    //suffixIconColor: Colors.grey,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide(
                        color: Color(0xFF36B8B8),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide(
                        color: Color(0xFF36B8B8),
                      ),
                    ),
                    // labelText: "Phone No.",
                    hintText: 'Search',
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 100,
                    ),
                    hintStyle: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              color: Color.fromARGB(255, 1, 236, 253),
            ),
            Container(
              height: 40,
              child: Row(
                children: [
                  Container(
                    width: 196,
                    child: Center(
                        child: Text(
                      'Chats',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    )),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 2, color: Color(0xFFB8F2EF)))),
                  ),
                  InkWell(
                    child: Container(
                      width: 196,
                      child: Center(
                          child: Text(
                        'Groups',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      )),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child:  ListView.builder(
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: (

                            ) {
                            Navigator.push(context, MaterialPageRoute(builder:(context) => Chatting(),));
                            },
                            child: ListTile(
                              leading: CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage('assets/images/ubaid.jpg'),
                              ),
                              title: Text('Ubaid',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500)),
                              subtitle: Text('Hi! I am using chatApp'),
                              trailing: Text('1'),
                            ),
                          );
                        },
                        itemCount: 1,
              )
                 
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          height: 50,
          width: 50,
          child: Material(
            type: MaterialType.transparency,
            child: Ink(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.greenAccent, width: 7),
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(500.0),
                onTap: () {},
                child: Icon(
                  Icons.add,
                  color: Colors.greenAccent,
                  size: 22,
                  //size: 50,
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 200,
          height: 100,
          shape: CircularNotchedRectangle(),
          color: Colors.white,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Container(
                      child: Column(
                    children: [
                      FaIcon(Icons.inbox, color: Color(0xFF51EFA3), size: 25),
                      Text(
                        "Messages",
                        style: TextStyle(
                            fontFamily: 'Poppins', fontWeight: FontWeight.w100),
                      )
                    ],
                  )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Icon(Icons.settings, color: Colors.grey.shade500, size: 25),
                  Text(
                    'Settings',
                    style: TextStyle(
                        fontFamily: 'Poppins', fontWeight: FontWeight.w100),
                  )
                ],
              ),
            )
          ]),
        ));
    ;
  }
}

class BottomScreen extends StatelessWidget {
  const BottomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 200,
      height: 100,
      shape: CircularNotchedRectangle(),
      color: Colors.white,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            children: [
              FaIcon(Icons.inbox, color: Colors.grey.shade500, size: 25),
              Text(
                "Messages",
                style: TextStyle(
                    fontFamily: 'Poppins', fontWeight: FontWeight.w100),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Icon(Icons.settings, color: Colors.green, size: 25),
              Text(
                'Settings',
                style: TextStyle(
                    fontFamily: 'Poppins', fontWeight: FontWeight.w100),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
