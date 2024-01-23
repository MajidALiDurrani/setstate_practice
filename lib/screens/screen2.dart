import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class setstate2 extends StatefulWidget {
  const setstate2({super.key});

  @override
  State<setstate2> createState() => _setstate2State();
}

class _setstate2State extends State<setstate2> {
  TextEditingController namecontrolar = TextEditingController();
  TextEditingController emailcontrolar = TextEditingController();
  TextEditingController passwordcontrolar = TextEditingController();
  bool _obscureText = true;
  bool switchvalur = false;
  Color colors = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors,
      appBar: AppBar(
        title: Text(namecontrolar.text),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Switch(
                    value: switchvalur,
                    onChanged: (value) {
                      setState(() {
                        switchvalur = value;
                        colors = switchvalur ? Colors.black : Colors.white;
                      });
                    })
              ],
            ),
            TextField(
              controller: namecontrolar,
              textAlign: TextAlign.start,
              decoration: const InputDecoration(
                hintText: " Enter Your Full Name",
                labelText: "Name",
                suffixIcon: Icon(
                  Icons.abc,
                ),
              ),
            ),
            const Gap(20),
            TextField(
              controller: emailcontrolar,
              textAlign: TextAlign.start,
              decoration: const InputDecoration(
                hintText: " Enter Your Email",
                labelText: "Email",
                suffixIcon: Icon(
                  Icons.email,
                ),
              ),
            ),
            const Gap(20),
            TextField(
              obscureText: _obscureText,
              obscuringCharacter: "#",
              controller: passwordcontrolar,
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                  hintText: " Enter Your Password",
                  labelText: "Password",
                  suffixIcon: IconButton(
                      color: Colors.black,
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      icon: Icon(_obscureText
                          ? Icons.visibility_off_outlined
                          : Icons.visibility))),
            ),
            const Gap(20),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    String name = namecontrolar.text.trim();
                    name.isEmpty
                        ? print("enter your name")
                        : print("name=$name");
                  });
                },
                child: Text("submit")),
          ],
        ),
      ),
    );
  }
}
