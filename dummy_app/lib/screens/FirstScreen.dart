import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: null,
        body: Center(
          child: Container(
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Dummy App In Fluuter"),
                Text("This Is First Screen"),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/SecondScreen');
                  },
                  child: Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.only(
                          left: 10, right: 10, top: 8, bottom: 8),
                      decoration: BoxDecoration(color: Colors.blue[100]),
                      child: Text("Click Me to Go Next Screen")),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
