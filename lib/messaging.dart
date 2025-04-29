import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Chatting());
  }
}

class Chatting extends StatelessWidget {
  const Chatting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF36B8B8),
        title: const Center(
          child: Text("Daniel Motto"),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.circle,
              size: 40,
              color: Colors.blueAccent,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Settings()),
              );
            },
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              PopupMenuButton<int>(
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                            ),
                            Icon(Icons.contacts_outlined),
                            Text("Contact")
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                            ),
                            Icon(Icons.file_open_outlined),
                            SizedBox(
                              width: 10,
                            ),
                            Text("File")
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                            ),
                            Icon(Icons.photo_library),
                            Text("Photo")
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
                onSelected: (value) {
                  if (value == 1) {
                    print("This is working");
                  }
                },
              ),
              const SizedBox(
                width: 240,
                height: 50,
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    fillColor: Color(0xFF20232B),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    hintText: 'Type Something.....',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              FloatingActionButton(
                backgroundColor: const Color(0xFF36B8B8),
                child: const Icon(
                  Icons.arrow_outward,
                  size: 15,
                ),
                onPressed: () => Null,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF36B8B8),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.circle,
                size: 90,
              ),
              SizedBox(
                width: 20,
                height: 0,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: 'Khawar Mohi Ud din \n',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        )),
                    TextSpan(
                      text: ' i2221538@nu.edu.pk',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            reverse: true,
            children: <Widget>[
              ListTile(
                contentPadding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                minVerticalPadding: 20,
                title: Text("Help",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Help())),
              ),
              ListTile(
                contentPadding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                minVerticalPadding: 20,
                title: Text("Language",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                onTap: () => Null,
              ),
              ListTile(
                contentPadding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                minVerticalPadding: 20,
                title: Text("Notifications",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Bio())),
              ),
              ListTile(
                contentPadding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                minVerticalPadding: 20,
                title: Text("Chats",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Chats())),
              ),
              ListTile(
                contentPadding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                minVerticalPadding: 20,
                title: Text("Privacy",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Privacy())),
              ),
              ListTile(
                contentPadding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                minVerticalPadding: 20,
                title: Text("Account",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Account())),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF36B8B8),
        title: Text(
          "Help",
          style: TextStyle(color: Color(0xff000000)),
        ),
      ),
      body: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          padding: EdgeInsets.fromLTRB(30, 100, 0, 0),
          children: [
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(40, 0, 0, 0),
              minVerticalPadding: 30,
              title: Text("App info",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              onTap: () => Null,
            ),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(40, 0, 0, 0),
              minVerticalPadding: 30,
              title: Text("Privacy policy",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              onTap: () => Null,
            ),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(40, 0, 0, 0),
              minVerticalPadding: 30,
              title: Text("Contact Us",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              onTap: () => Null,
            ),
          ]),
    );
  }
}

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF36B8B8),
        title: Text(
          "Account",
          style: TextStyle(color: Color(0xff000000)),
        ),
      ),
      body: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          padding: EdgeInsets.fromLTRB(30, 80, 0, 0),
          children: [
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(40, 0, 0, 0),
              minVerticalPadding: 30,
              title: Text("Security Alerts",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              onTap: () => Null,
            ),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(40, 0, 0, 0),
              minVerticalPadding: 30,
              title: Text("Delete Account",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              onTap: () => Null,
            ),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(40, 0, 0, 0),
              minVerticalPadding: 30,
              title: Text("Account Info",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              onTap: () => Null,
            ),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(40, 0, 0, 0),
              minVerticalPadding: 30,
              title: Text("Change Number",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              onTap: () => Null,
            ),
          ]),
    );
  }
}

class Privacy extends StatelessWidget {
  const Privacy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF36B8B8),
        title: Text(
          "Privacy",
          style: TextStyle(color: Color(0xff000000)),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        padding: EdgeInsets.fromLTRB(30, 80, 0, 0),
        children: [
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(40, 0, 0, 0),
            minVerticalPadding: 30,
            title: Text("Display Picture",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            onTap: () => Null,
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(40, 0, 0, 0),
            minVerticalPadding: 30,
            title: Text("Status",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            onTap: () => Null,
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(40, 0, 0, 0),
            minVerticalPadding: 30,
            title: Text("Online",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            onTap: () => Null,
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(40, 0, 0, 0),
            minVerticalPadding: 30,
            title: Text("Blocked contacts",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            onTap: () => Null,
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(40, 0, 0, 0),
            minVerticalPadding: 30,
            title: Text("BIO",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            onTap: () => Null,
          ),
        ],
      ),
    );
  }
}

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF36B8B8),
        title: Text(
          "Chats",
          style: TextStyle(color: Color(0xff000000)),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        padding: EdgeInsets.fromLTRB(30, 80, 0, 0),
        children: [
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(40, 0, 0, 0),
            minVerticalPadding: 30,
            title: Text("Theme",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            onTap: () => Null,
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(40, 0, 0, 0),
            minVerticalPadding: 30,
            title: Text("Wallpaper",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            onTap: () => Null,
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(40, 0, 0, 0),
            minVerticalPadding: 30,
            title: Text("Font",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            onTap: () => Null,
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(40, 0, 0, 0),
            minVerticalPadding: 30,
            title: Text("Media",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            onTap: () => Null,
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(40, 0, 0, 0),
            minVerticalPadding: 30,
            title: Text("Chat Backup",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            onTap: () => Null,
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(40, 0, 0, 0),
            minVerticalPadding: 30,
            title: Text("Chat History",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            onTap: () => Null,
          ),
        ],
      ),
    );
  }
}

class Bio extends StatelessWidget {
  const Bio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 418,
        width: 400,
        decoration: BoxDecoration(
          color: Color(0xff36B8B8),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(45),
            bottomRight: Radius.circular(45),
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(50, 50, 50, 10),
              child: Icon(
                Icons.circle,
                size: 70,
              ),
            ),
            Container(
              child: Text(
                "Daniel Motto",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text(
                "+(92) 330-4009554",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
