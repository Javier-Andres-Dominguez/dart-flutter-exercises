import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Topic extends StatelessWidget {
  const Topic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Makes the window not rotable
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
        //This is a desplegable menu that contains 2 buttons to navigate between windows
        drawer: Drawer(
          child: Column(
            //Make every element in the column have space between other elements bearing in mind the space automatically
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //The drawer elements:
              new SizedBox(
                width: 150,
                height: 50,
                child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () {
                      //When button is pressed it goes to the Login window
                      Navigator.popUntil(context, ModalRoute.withName('Login'));
                    },
                    child: Text(
                      'Logout',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              new SizedBox(
                width: 150,
                height: 50,
                child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () {
                      //When button is pressed it goes to the About_me window
                      Navigator.pushNamed(context, "About_me");
                    },
                    child: Text(
                      'About me',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ], //End of drawer elements
          ),
        ), //End of the desplegable menu
        //The window top appBar
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            '#신상',
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
          //This makes the title not be in the left obligatorily
          automaticallyImplyLeading: false,
          //Left back-button
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              //It goes back to the Login window
              Navigator.pop(context);
            },
          ),
          //Right more-button
          actions: [
            Builder(builder: (context) {
              return IconButton(
                  onPressed: () {
                    //It shows a desplegable menu with navigating options
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(
                    Icons.more_horiz,
                    color: Colors.black,
                  ));
            })
          ],
          backgroundColor: Colors.white,
        ), //End of top appBar
        //Begin of bottom appBar
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: Row(
            //This makes every element in the row have space between them bearing in mind the total space
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //All its elements:
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
            ], //End of row elements
          ),
        ),
        //This property makes the window be scrollable downwards
        body: SingleChildScrollView(
          child: Align(
            //This makes all elemnts be centered in the top-center window space
            alignment: Alignment.topCenter,
            //First a column so everything goes by default down
            child: Column(
              //Column components:
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
                    //This column contains the number of posts and the follow button
                    Column(
                      //Column´s elements:
                      children: [
                        Padding(padding: EdgeInsets.only(left: 250)),
                        //This row contains the number of posts in 2 different elements for different styles
                        Row(
                          //Number of posts row´s elements:
                          children: [
                            Text('3.6M '),
                            Text(
                              'posts',
                              style: TextStyle(color: Colors.grey),
                            )
                          ], //End of number of posts row´s elements:
                        ), //End of number of posts row´s
                        Padding(padding: EdgeInsets.only(bottom: 10)),
                        //Create the follow button outside the row so it places under the text
                        new SizedBox(
                          width: 200,
                          height: 30,
                          child: TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.blue),
                              //When pressed nothing happens, it is just visual
                              onPressed: () {},
                              child: Text(
                                'Follow',
                                style: TextStyle(color: Colors.white),
                              )),
                        ), //End of follow button
                      ], //End of the column that contains the number of posts and the follow button
                    )
                  ],
                ), //End of the row that contains the img+posts+follow button
                //This is the row where 2 horizontal lines and many "#" are included
                Column(
                  children: [
                    //Separate from the element above it
                    Padding(padding: EdgeInsets.only(top: 8)),
                    //This is an horizontal line
                    Container(
                      height: 1,
                      color: Colors.grey,
                    ),
                    //This property makes the row scrollable horizontally
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      //This is where the # row begins
                      child: Row(
                        //The row has to have in a container all the texts because a row can only have a child
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 45,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 244, 244, 244)),
                            child: Row(
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
                          ) //End of the texts container
                        ],
                      ), //End of # row
                    ),
                    //Horizontal line
                    Container(
                      height: 1,
                      color: Colors.grey,
                    )
                  ],
                ), //End of # and horizontal lines colum
                //This row contains Top and Recent buttons
                Row(
                  //This property makes buttons have space between them bearing in mind the max space
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text('Top',
                          style: TextStyle(fontSize: 17, color: Colors.black)),
                    ),
                    TextButton(
                      onPressed: null,
                      child: Text('Recent',
                          style: TextStyle(fontSize: 17, color: Colors.grey)),
                    )
                  ],
                ), //End of top/recent row
                //This column has multiple rows of 3 images
                Column(
                  children: [
                    //This row contains 3 images with space between them
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
                    ), //End of the 3 img row
                    //This row contains 3 images with space between them
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
                    ), //End of the 3 img row
                    //This row contains 3 images with space between them
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
                    ), //End of the 3 img row
                    //This row contains 3 images with space between them
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
                    ), //End of the 3 img row
                    //This row contains 3 images with space between them
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
                    ), //End of the 3 img row
                    //This row contains 3 images with space between them
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
                    ), //End of the 3 img row
                    //This row contains 3 images with space between them
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
                    ), //End of the 3 img row
                    //This row contains 3 images with space between them
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
                    ), //End of the 3 img row
                    //This row contains 3 images with space between them
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
                    ), //End of the 3 img row
                    //This row contains 3 images with space between them
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
                    ) //End of the 3 img row
                  ],
                ), //End of the column that contains rows of 3 images
              ],
            ), //End of the column that contains everything
          ),
        ),//End of the body
        backgroundColor: Colors.white);
  }
}
