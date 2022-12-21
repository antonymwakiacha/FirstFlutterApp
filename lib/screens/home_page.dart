import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //APPBAR
      appBar: AppBar(title: Text("Adventure"), actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            color: Colors.white,
          ),
        )
      ]),
      //MAIN CONTENT
      body: Container(
        child: ListView(
          children: [
            //IMAGE
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/forestbg.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
            //SPACE
            SizedBox(
              height: 20,
            ),
            //TITLE, SUBTITLE SECTION
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Forest Trail",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text("Shanzu, Mombasa",
                            style: TextStyle(color: Colors.black54)),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.red,
                    size: 18,
                  ),
                  Text("41"),
                ],
              ),
            ),
            //SPACE
            SizedBox(
              height: 30,
            ),
            //ACTION SECTION
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //FIRST CHILD
                  Column(
                    children: [
                      Icon(
                        Icons.call,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "CALL",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                  //SECOND CHILD
                  Column(
                    children: [
                      Icon(
                        Icons.directions,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "ROUTE",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                  //THIRD CHILD
                  Column(
                    children: [
                      Icon(
                        Icons.share,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "SHARE",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //SPACE
            SizedBox(
              height: 20,
            ),
            //PARAGRAPH SECTION
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                  "In 2050, 70% of the world population will live in cities, twice as many as there were in 1970. Whether large, medium or small, whether in mature or emerging countries, cities are central to the challenges facing the planet. To improve cities, Lafarge contributes to the construction of cities around the world, through its innovative solutions providing them with more housing and making them more compact, more durable, more beautiful, and better connected."),
            ),
          ],
        ),
      ),
      //FLOATING ACTION BUTTON
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.message, color: Colors.white)
      ),
    );
  }
}
