import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:pdfviewer/developer.dart';
import 'package:pdfviewer/subjectwise.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> pdfs = [
    'WebTechnology.pdf',
    'DiscreteMath.pdf',
    'SystemAnalysis.pdf',
    'OperatingSystem.pdf',
    'Databasemanagement.pdf',
    'python.pdf',
    'js.pdf',
    'javaScript.pdf',
    'Cprogramming.pdf'
  ];
  List<String> topimages = [
    'assets/images/excel.png',
    'assets/images/office.png',
    'assets/images/pdf2.png',
    'assets/images/pp.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 240, 235, 235),
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DeveloperPage();
                  }));
                },
                icon: Icon(
                  Icons.question_mark_rounded,
                  color: Color.fromARGB(255, 1, 92, 250),
                ))
          ],
          leading: Icon(
            Icons.menu_open_sharp,
            color: Colors.black,
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 240, 239, 239),
          title: Text(
            'PDF Reader',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Container(
              margin: EdgeInsets.all(9),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 168, 93, 158)),
              child: Column(
                children: [
                  CarouselSlider.builder(
                      itemCount: topimages.length,
                      itemBuilder: (BuildContext context, int itemIndex,
                              int pageViewIndex) =>
                          Center(
                            child: Container(
                              child: Image.asset(topimages[itemIndex]),
                            ),
                          ),
                      options: CarouselOptions(
                        height: 170,
                        aspectRatio: 19 / 9,
                        viewportFraction: 0.8,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.3,
                        scrollDirection: Axis.horizontal,
                      ))
                ],
              ),
            )),
            Container(
              margin: EdgeInsets.only(left: 30),
              child: Text('Recent Files',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
            ),
            Expanded(
                flex: 2,
                child: Container(
                  // color: Colors.blueAccent,
                  child: Expanded(
                      child: Container(
                    margin: EdgeInsets.all(9),
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Color.fromARGB(255, 124, 184, 181),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: Expanded(
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: pdfs.length,
                            itemBuilder: (context, int index) {
                              return Container(
                                margin: EdgeInsets.all(10),
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                width: MediaQuery.of(context).size.width,
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Container(
                                      child:
                                          Image.asset('assets/images/pdf.png'),
                                    )),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                        flex: 15,
                                        child: Container(
                                          child: Text(
                                            pdfs[index],
                                            style: TextStyle(
                                                color: const Color.fromARGB(
                                                    255, 0, 0, 0),
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ))
                                  ],
                                ),
                              );
                            })),
                  )),
                )),
            SizedBox(
              height: 10,
            ),
            Expanded(
                flex: 1,
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.all(10),
                        // color: const Color.fromARGB(255, 201, 64, 255),
                        child: Expanded(
                            child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.amberAccent,
                              shape: BoxShape.rectangle),
                          child: Column(
                            children: [
                              Expanded(
                                  child: Container(
                                margin: EdgeInsets.only(right: 60, top: 40),
                                child: IconButton(
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return SubjectWise();
                                      }));
                                    },
                                    icon: Icon(
                                      Icons.folder_copy_rounded,
                                      color: Colors.blueAccent,
                                      size: 80,
                                    )),
                              )),
                              Expanded(
                                  child: Container(
                                margin: EdgeInsets.only(top: 30),
                                child: Text(
                                  "Subject Wise PDFs",
                                  style: TextStyle(
                                      color: const Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                            ],
                          ),
                        )),
                      )),
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.all(10),
                        // color: const Color.fromARGB(255, 201, 64, 255),
                        child: Expanded(
                            child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.amberAccent,
                              shape: BoxShape.rectangle),
                          child: Column(
                            children: [
                              Expanded(
                                  child: Container(
                                margin: EdgeInsets.only(right: 60, top: 40),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.folder_copy_rounded,
                                      color: Colors.blueAccent,
                                      size: 80,
                                    )),
                              )),
                              Expanded(
                                  child: Container(
                                margin: EdgeInsets.only(top: 30),
                                child: Text(
                                  "Select From Phone",
                                  style: TextStyle(
                                      color: const Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                            ],
                          ),
                        )),
                      )),
                    ],
                  ),
                )),
          ],
        ));
  }
}
// Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               Container(
//                 width: MediaQuery.of(context).size.width * 0.07,
//                 height: MediaQuery.of(context).size.height * 0.07,
//                 child: Icon(Icons.menu_open),
//                 color: Colors.purpleAccent,
//               ),
//               Container(
//                 width: MediaQuery.of(context).size.width * 0.85,
//                 height: MediaQuery.of(context).size.height * 0.07,
//                 color: Colors.purpleAccent,
//                 child: Center(child: Text('PDF Reader')),
//               ),
//               Container(
//                 width: MediaQuery.of(context).size.width * 0.08,
//                 height: MediaQuery.of(context).size.height * 0.07,
//                 color: Colors.purpleAccent,
//                 child: GestureDetector(
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) {
//                       return DeveloperPage();
//                     }));
//                   },
//                   child: Icon(
//                     Icons.question_mark,
//                     color: const Color.fromARGB(255, 82, 171, 255),
//                   ),
//                 ),
//               )
//             ],
//           ),
//           SizedBox(
//             height: 15,
//           ),
//           Column(
//             children: [
//               CarouselSlider.builder(
//                   itemCount: 5,
//                   itemBuilder: (BuildContext context, int itemIndex,
//                           int pageViewIndex) =>
//                       Container(
//                         child: Image.asset('assets/images/image'),
//                       ),
//                   options: CarouselOptions(
//                     height: 130,
//                     aspectRatio: 16 / 9,
//                     viewportFraction: 0.8,
//                     initialPage: 0,
//                     enableInfiniteScroll: true,
//                     reverse: false,
//                     autoPlay: true,
//                     autoPlayInterval: Duration(seconds: 3),
//                     autoPlayAnimationDuration: Duration(milliseconds: 800),
//                     autoPlayCurve: Curves.fastOutSlowIn,
//                     enlargeCenterPage: true,
//                     enlargeFactor: 0.3,
//                     scrollDirection: Axis.horizontal,
//                   ))
//             ],
//           ),
//           SizedBox(
//             height: 15,
//           ),
//           Container(
//             child: Text('Recent Files'),
//           ),
//           Row(
//             children: [
//               Container(
//                 margin: EdgeInsets.all(4),
//                 width: MediaQuery.of(context).size.width * 0.32,
//                 height: MediaQuery.of(context).size.height * 0.3,
//                 color: Colors.black,
//               ),
//               Container(
//                 margin: EdgeInsets.all(4),
//                 width: MediaQuery.of(context).size.width * 0.32,
//                 height: MediaQuery.of(context).size.height * 0.3,
//                 color: Colors.black,
//               ),
//               Container(
//                 margin: EdgeInsets.all(4),
//                 width: MediaQuery.of(context).size.width * 0.32,
//                 height: MediaQuery.of(context).size.height * 0.3,
//                 color: Colors.black,
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 30,
//           ),
//           Row(
//             children: [
//               Container(
//                 margin: EdgeInsets.only(left: 30),
//                 width: MediaQuery.of(context).size.width * 0.31,
//                 height: MediaQuery.of(context).size.height * 0.3,
//                 color: Colors.black,
//               ),
//               Container(
//                 margin: EdgeInsets.only(left: 180),
//                 width: MediaQuery.of(context).size.width * 0.33,
//                 height: MediaQuery.of(context).size.height * 0.3,
//                 color: Colors.black,
//               )
//             ],
//           ),
//         ],
//       ),