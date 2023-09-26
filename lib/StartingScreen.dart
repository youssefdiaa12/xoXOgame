import 'package:flutter/material.dart';
import 'package:xogame/homescreen.dart';

class StartingScreen extends StatefulWidget {
  TextEditingController a1;
  TextEditingController a2;

  StartingScreen(this.a1, this.a2, {super.key});

  static const String routename = "StartingScreen";

  @override
  State<StartingScreen> createState() => _StartingScreenState();
}

class _StartingScreenState extends State<StartingScreen> {
  bool is_written1 = false;
  bool is_written2 = false;

  void function() {
    setState(() {
      if (widget.a1.text.isEmpty) {
        is_written1 = true;
      } else {
        is_written1 = false;
      }
      if (widget.a2.text.isEmpty) {
        is_written2 = true;
      } else {
        is_written2 = false;
      }
      if (!is_written1 && !is_written2) {
        Navigator.of(context).pushNamed(homescreen.routeName,
            arguments: homescreen(widget.a1, widget.a2));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: const Align(
            alignment: Alignment.center,
            child: Text("XOGAME",
                style: TextStyle(fontSize: 25, color: Colors.white)),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 60, right: 60),
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60))),
                width: double.infinity,
                height: 120,
                child: const Center(
                  child: Text("XOGAME",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: AutofillHints.nickname,
                          fontStyle: FontStyle.italic)),
                ),
              ),
            ),
            const SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16, top: 6),
              child: Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.pink,
                    blurRadius: 10,
                    spreadRadius:10,
                  ),
                ]),
                child: TextField(
                  controller: widget.a1,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Enter Player 1 Name",
                      hintStyle: const TextStyle(
                          color: Colors.cyan, fontWeight: FontWeight.bold),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Visibility(
                    visible: is_written1,
                    child: const Text(
                      textAlign: TextAlign.left,
                      "please enter player 1 name",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 25.0, left: 16.0, right: 16.0),
              child: Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.pink,
                    blurRadius: 10,
                    spreadRadius:10,
                  ),
                ]),
                child: TextField(
                  controller: widget.a2,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Enter Player 2 Name",
                      hintStyle: const TextStyle(
                          color: Colors.cyan, fontWeight: FontWeight.bold),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Visibility(
                    visible: is_written2,
                    child: const Text(
                      textAlign: TextAlign.left,
                      "please enter player 2 name",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: SizedBox(
                width: 120,
                height: 40,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        return Colors.cyan;
                      }),
                    ),
                    onPressed: function,
                    child: const Text(
                      "Start Game",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
