import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram view', //App title
      home: Scaffold(
          appBar: AppBar(
            //Top bar
            centerTitle: true,
            title: const Text(
              '#신상',
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            automaticallyImplyLeading: false,
            //Left button
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              onPressed: () {
                /** Do something */
              },
            ),
            //Right button
            actions: [
              IconButton(
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.black,
                ),
                onPressed: () {
                  /** Do something */
                },
              )
            ],
            backgroundColor: Colors.white,
          ),
          bottomNavigationBar: BottomAppBar(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: IconButton(
                    icon: Icon(
                      size: 33,
                      Icons.home_outlined,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      /** Do something */
                    },
                  ),
                ),
                Container(
                  child: IconButton(
                    icon: Icon(
                      size: 33,
                      Icons.search,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      /** Do something */
                    },
                  ),
                ),
                Container(
                  child: IconButton(
                    icon: Icon(
                      size: 33,
                      Icons.add_box_outlined,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      /** Do something */
                    },
                  ),
                ),
                Container(
                  child: IconButton(
                    icon: Icon(
                      size: 33,
                      Icons.heart_broken_outlined,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      /** Do something */
                    },
                  ),
                ),
                Container(
                  height: 32,
                  width: 50,
                  child: InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/신상.jpg'),
                    ),
                  ),
                )
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Align(
              alignment: Alignment.topCenter,
              //First a column so everything goes by default down
              child: Column(
                children: [
                  //This is the margin from the Bar
                  Padding(padding: EdgeInsets.only(top: 10)),
                  //The row that contains the img+posts+follow button
                  Row(
                    children: [
                      //Another margin but this time from the left
                      Padding(padding: EdgeInsets.only(left: 10)),
                      //This will make any img circular
                      CircleAvatar(
                        radius: 45,
                        backgroundColor: Colors.pink,
                        child: CircleAvatar(
                          radius: 41,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 38,
                            backgroundImage: AssetImage('assets/신상.jpg'),
                          ),
                        ),
                      ),
                      //This column contains the number of posts and the button
                      Column(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 250)),
                          //This row contains the number of posts
                          Row(
                            children: [
                              Text('3.6M '),
                              Text(
                                'posts',
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 10)),
                          //Create the button outside the row so it places under the text
                          new SizedBox(
                            width: 200,
                            height: 30,
                            child: TextButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.blue),
                                onPressed: /*Change the style and the text*/ () {},
                                child: Text(
                                  'Follow',
                                  style: TextStyle(color: Colors.white),
                                )),
                          ), /*button*/
                        ],
                      )
                    ],
                  ),
                  //This is the row where many "#" are included
                  Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 8)),
                      Container(
                        height: 1,
                        color: Colors.grey,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: 45,
                              //width: 392.5,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 244, 244, 244)),
                              child: Row(
                                /*mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,*/
                                children: [
                                  Padding(padding: EdgeInsets.only(left: 10)),
                                  Text(
                                    '#TestingText',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.only(left: 10)),
                                  Text(
                                    '#ShortText',
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.only(left: 10)),
                                  Text(
                                    '#TestingVeryLongText',
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.only(left: 10)),
                                  Text(
                                    '#Text4',
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.only(left: 10)),
                                  Text(
                                    '#TextLongEnoughForScroll',
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.only(left: 10)),
                                  Text(
                                    '#TextLongEnoughForScroll',
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.only(left: 10))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      //End of "#" row
                      Container(
                        height: 1,
                        color: Colors.grey,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text('Top',
                            style:
                                TextStyle(fontSize: 17, color: Colors.black)),
                      ),
                      TextButton(
                        onPressed: null,
                        child: Text('Recent',
                            style: TextStyle(fontSize: 17, color: Colors.grey)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: new EdgeInsets.symmetric(vertical: 2),
                            width: 127,
                            height: 127,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/2/9.png'))),
                          ),
                          Container(
                            margin: new EdgeInsets.symmetric(vertical: 2),
                            width: 127,
                            height: 127,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/2/8.png'))),
                          ),
                          Container(
                            margin: new EdgeInsets.symmetric(vertical: 2),
                            width: 127,
                            height: 127,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/2/7.png'))),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: new EdgeInsets.symmetric(vertical: 2),
                            width: 127,
                            height: 127,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/2/6.png'))),
                          ),
                          Container(
                            margin: new EdgeInsets.symmetric(vertical: 2),
                            width: 127,
                            height: 127,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/2/5.png'))),
                          ),
                          Container(
                            margin: new EdgeInsets.symmetric(vertical: 2),
                            width: 127,
                            height: 127,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/2/4.png'))),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: new EdgeInsets.symmetric(vertical: 2),
                            width: 127,
                            height: 127,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/2/3.png'))),
                          ),
                          Container(
                            margin: new EdgeInsets.symmetric(vertical: 2),
                            width: 127,
                            height: 127,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/2/2.png'))),
                          ),
                          Container(
                            margin: new EdgeInsets.symmetric(vertical: 2),
                            width: 127,
                            height: 127,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/2/1.png'))),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: new EdgeInsets.symmetric(vertical: 2),
                            width: 127,
                            height: 127,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/1/9.png'))),
                          ),
                          Container(
                            margin: new EdgeInsets.symmetric(vertical: 2),
                            width: 127,
                            height: 127,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/1/8.png'))),
                          ),
                          Container(
                            margin: new EdgeInsets.symmetric(vertical: 2),
                            width: 127,
                            height: 127,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/1/7.png'))),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: new EdgeInsets.symmetric(vertical: 2),
                            width: 127,
                            height: 127,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/1/6.png'))),
                          ),
                          Container(
                            margin: new EdgeInsets.symmetric(vertical: 2),
                            width: 127,
                            height: 127,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/1/5.png'))),
                          ),
                          Container(
                            margin: new EdgeInsets.symmetric(vertical: 2),
                            width: 127,
                            height: 127,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/1/4.png'))),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: new EdgeInsets.symmetric(vertical: 2),
                            width: 127,
                            height: 127,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/1/3.png'))),
                          ),
                          Container(
                            margin: new EdgeInsets.symmetric(vertical: 2),
                            width: 127,
                            height: 127,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/1/2.png'))),
                          ),
                          Container(
                            margin: new EdgeInsets.symmetric(vertical: 2),
                            width: 127,
                            height: 127,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/1/1.png'))),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: new EdgeInsets.symmetric(vertical: 2),
                            width: 127,
                            height: 127,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/3/9.png'))),
                          ),
                          Container(
                            margin: new EdgeInsets.symmetric(vertical: 2),
                            width: 127,
                            height: 127,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/3/8.png'))),
                          ),
                          Container(
                            margin: new EdgeInsets.symmetric(vertical: 2),
                            width: 127,
                            height: 127,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/3/7.png'))),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: new EdgeInsets.symmetric(vertical: 2),
                            width: 127,
                            height: 127,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/3/6.png'))),
                          ),
                          Container(
                            margin: new EdgeInsets.symmetric(vertical: 2),
                            width: 127,
                            height: 127,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/3/5.png'))),
                          ),
                          Container(
                            margin: new EdgeInsets.symmetric(vertical: 2),
                            width: 127,
                            height: 127,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/3/4.png'))),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: new EdgeInsets.symmetric(vertical: 2),
                            width: 127,
                            height: 127,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/3/3.png'))),
                          ),
                          Container(
                            margin: new EdgeInsets.symmetric(vertical: 2),
                            width: 127,
                            height: 127,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/3/2.png'))),
                          ),
                          Container(
                            margin: new EdgeInsets.symmetric(vertical: 2),
                            width: 127,
                            height: 127,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/3/1.png'))),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: new EdgeInsets.symmetric(vertical: 2),
                            width: 127,
                            height: 127,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/신상.jpg'))),
                          ),
                          Container(
                            margin: new EdgeInsets.symmetric(vertical: 2),
                            width: 127,
                            height: 127,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/신상.jpg'))),
                          ),
                          Container(
                            margin: new EdgeInsets.symmetric(vertical: 2),
                            width: 127,
                            height: 127,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/신상.jpg'))),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          backgroundColor: Colors.white),
    );
  }
}
