import 'package:flutter/material.dart';

class setstatework extends StatefulWidget {
  const setstatework({super.key});

  @override
  State<setstatework> createState() => _setstateworkState();
}

// colors change screen with self made button
class _setstateworkState extends State<setstatework> {
  Color color = Color.fromARGB(255, 187, 122, 122);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: Text("setstate"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onDoubleTap: () {
                setState(() {
                  color = Colors.white;
                });
              },
              onTap: () {
                setState(() {
                  color = Colors.black;
                  print("click");
                });
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.09,
                width: MediaQuery.of(context).size.width * 0.54,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.black),
                child: const Center(
                  child: Text(
                    "click me",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
