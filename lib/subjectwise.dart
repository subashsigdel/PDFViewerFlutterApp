import 'package:flutter/material.dart';
import 'package:pdfviewer/developer.dart';

class SubjectWise extends StatefulWidget {
  const SubjectWise({super.key});

  @override
  State<SubjectWise> createState() => _SubjectWiseState();
}

class _SubjectWiseState extends State<SubjectWise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.question_mark_rounded,
                color: Color.fromARGB(255, 1, 92, 250),
              ))
        ],
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 147, 227, 229),
        title: Text(
          'Subject Wise PDFs',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 15,
              child: Container(
                color: const Color.fromARGB(255, 235, 233, 229),
                child: Expanded(
                    child: Container(
                  child: ListView.builder(
                      itemCount: 50,
                      shrinkWrap: true,
                      itemBuilder: (context, int index) {
                        return Container(
                          child: Expanded(
                              child: GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return DeveloperPage();
                              }));
                            },
                            child: Container(
                              margin: EdgeInsets.all(10),
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.09,
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(15),
                                  color:
                                      const Color.fromARGB(255, 224, 223, 219)),
                            ),
                          )),
                        );
                      }),
                )),
              )),
          Expanded(
              child: Container(
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add_box_sharp,
                size: 35,
              ),
            ),
          ))
        ],
      ),
    );
  }
}
