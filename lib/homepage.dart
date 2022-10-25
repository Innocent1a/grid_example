import 'dart:async';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomaPage"),
      ),
      body: SafeArea(
          child: Center(
        child: ElevatedButton(
          child: Text("Open Dialog"),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      title: Text("Your name"),
                      content: TextField(
                        autofocus: true,
                        decoration:
                            InputDecoration(hintText: "Enter your name"),
                      ),
                      actions: [
                        TextButton(child: Text("Submit"), onPressed: () {})
                      ],
                    ));
          },
        ),
      )),
    );

    Future openDialog() => showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Your name"),
            content: TextField(
              autofocus: true,
              decoration: InputDecoration(hintText: "Enter your name"),
            ),
            actions: [TextButton(child: Text("Submit"), onPressed: () {})],
          ),
        );

    void submit() {
      Navigator.of(context).pop();
    }
  }
}
