import 'package:flutter/material.dart';

class DeveloperPage extends StatefulWidget {
  const DeveloperPage({super.key});

  @override
  State<DeveloperPage> createState() => _DeveloperPageState();
}

class _DeveloperPageState extends State<DeveloperPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 203, 120, 219),
        title: Text(
          "About US",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Expanded(
              flex: 0,
              child: Container(
                child: Center(
                    child: Text(
                  'Dev',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
              )),
          Expanded(
              flex: 0,
              child: Container(
                margin: EdgeInsets.only(top: 15),
                child: Center(
                    child: Text(
                  'Subash Sigdel ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )),
              )),
          Expanded(
              flex: 0,
              child: Container(
                child: Center(
                    child: Text(
                  'hi@subashsigdel.com.np',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )),
              )),
          Expanded(
              flex: 0,
              child: Container(
                child: Center(
                    child: Text(
                  '00:00:00:29-07-23',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )),
              )),
          Expanded(
              flex: 0,
              child: Container(
                child: Center(
                    child: Text(
                  'Flutter Demo ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )),
              )),
          Expanded(
              flex: 0,
              child: Container(
                child: Center(
                    child: Text(
                  'College Project ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )),
              )),
          Expanded(
              flex: 0,
              child: Container(
                child: Center(
                    child: Text(
                  'GitHub : https://github.com/subashsigdel  ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )),
              )),
        ],
      ),
    );
  }
}
