import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gathrr/constants.dart';
import 'package:gathrr/screens/trending.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.white70,
        body: Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height / 40),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Spacer(),
                    Icon(
                      Icons.search,
                      size: 20,
                      color: Colors.black54,
                    ),
                    Icon(
                      Icons.tune_outlined,
                      color: Colors.black54,
                    )
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2.6,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.blue,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          child: Card(
                            elevation: 5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("assets/1.png"),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        "Pune Meetup",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5.0),
                                      child: SizedBox(
                                          child: TextButton(
                                        style: ButtonStyle(
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            18.0),
                                                    side: BorderSide(
                                                        color: Colors.white))),
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Color(0xFFFF5673))),
                                        onPressed: () {},
                                        child: Text(
                                          "Paid",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: SizedBox(
                                          child: TextButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Color(0xFF848DFF)),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            18.0),
                                                    side: BorderSide(
                                                        color: Colors.white)))),
                                        onPressed: () {},
                                        child: Text(
                                          "1.2 Km",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 35.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Align(
                                                widthFactor: 0.5,
                                                child: CircleAvatar(
                                                  backgroundColor: Colors.white,
                                                  radius: 14,
                                                  child: CircleAvatar(
                                                    backgroundImage: NetworkImage(
                                                        'https://i.pravatar.cc?img=12'),
                                                    // NetworkImage(
                                                    // _viewedUserPic1 == ''  ? 'https://i.pravatar.cc?img=10' :
                                                    // _viewedUserPic1
                                                    // ),
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    radius: 12.0,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                widthFactor: 0.5,
                                                child: CircleAvatar(
                                                  backgroundColor: Colors.white,
                                                  radius: 14,
                                                  child: CircleAvatar(
                                                    backgroundImage: NetworkImage(
                                                        'https://i.pravatar.cc?img=12'),
                                                    // NetworkImage(
                                                    //     // _viewedUserPic2 == '' ? 'https://i.pravatar.cc?img=12':
                                                    //     _viewedUserPic2
                                                    // ),
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    radius: 12.0,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                widthFactor: 0.5,
                                                child: CircleAvatar(
                                                  backgroundColor: Colors.white,
                                                  radius: 14,
                                                  child: CircleAvatar(
                                                    backgroundImage: NetworkImage(
                                                        'https://i.pravatar.cc?img=12'),
                                                    // NetworkImage(
                                                    //   // _viewedUserPic3 == '' ? 'https://i.pravatar.cc?img=14':
                                                    //   _viewedUserPic3
                                                    // ),
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    radius: 12.0,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                widthFactor: 0.5,
                                                child: CircleAvatar(
                                                  backgroundColor: Colors.white,
                                                  radius: 14,
                                                  child: CircleAvatar(
                                                    backgroundImage: NetworkImage(
                                                        'https://i.pravatar.cc?img=12'),
                                                    // NetworkImage(
                                                    //   // _viewedUserPic3 == '' ? 'https://i.pravatar.cc?img=14':
                                                    //   _viewedUserPic3
                                                    // ),
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    radius: 12.0,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ))
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                      "Bhau Institute, Shivajinagar, Pune"),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 30,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 19,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TrendingPage()));
                          },
                          child: Text(
                            "Category",
                            style:
                                TextStyle(fontSize: 22, color: Colors.black54),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            // top: MediaQuery.of(context).size.height / 5656,
                            left: MediaQuery.of(context).size.width / 2),
                        child: Text(
                          "See all (9)",
                          style: TextStyle(color: Colors.black54),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 30,
                        left: MediaQuery.of(context).size.width / 30,
                      ),
                      child: Stack(
                        children: [
                          Container(
                            foregroundDecoration: BoxDecoration(
                              color: Color(0xFFFF5673).withOpacity(.6),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            height: MediaQuery.of(context).size.height / 7,
                            width: MediaQuery.of(context).size.width / 3.6,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                "assets/pic2.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                            // color: Colors.black,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height / 20,
                              left: MediaQuery.of(context).size.width / 15,
                            ),
                            child: Text(
                              "Meetup",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 30,
                        left: MediaQuery.of(context).size.width / 30,
                      ),
                      child: Stack(
                        children: [
                          Container(
                            foregroundDecoration: BoxDecoration(
                              color: Color(0xFF832BF6).withOpacity(.6),
                              borderRadius: BorderRadius.circular(20),
                            ),

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            height: MediaQuery.of(context).size.height / 7,
                            width: MediaQuery.of(context).size.width / 3.6,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                "assets/pic.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                            // color: Colors.black,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height / 20,
                              left: MediaQuery.of(context).size.width / 15,
                            ),
                            child: Text(
                              "StartUp",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 30,
                        left: MediaQuery.of(context).size.width / 30,
                      ),
                      child: Stack(
                        children: [
                          Container(
                            foregroundDecoration: BoxDecoration(
                              color: Color(0xFF2DCEF8).withOpacity(.6),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blue),
                            height: MediaQuery.of(context).size.height / 7,
                            width: MediaQuery.of(context).size.width / 3.6,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                "assets/pic.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),

                            // color: Colors.black,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height / 20,
                              left: MediaQuery.of(context).size.width / 15,
                            ),
                            child: Text(
                              "College",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 19,
                          top: MediaQuery.of(context).size.height / 30),
                      child: Text(
                        "My Network",
                        style: TextStyle(fontSize: 22, color: Colors.black54),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 30,
                          left: MediaQuery.of(context).size.width / 2.5),
                      child: Text(
                        "See all (56)",
                        style: TextStyle(color: Colors.black54),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 30,
                      left: MediaQuery.of(context).size.width / 30),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 27,
                          backgroundImage: AssetImage(
                            "assets/2.jpg",
                            //fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width / 30,
                            left: MediaQuery.of(context).size.width / 30,
                          ),
                          child: CircleAvatar(
                            radius: 27,
                            backgroundImage: AssetImage(
                              "assets/3.jpg",
                              //fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        CircleAvatar(
                          radius: 27,
                          backgroundImage: AssetImage(
                            "assets/5.jpg",
                            //fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              right: MediaQuery.of(context).size.width / 30,
                              left: 10),
                          child: CircleAvatar(
                            radius: 27,
                            backgroundImage: AssetImage(
                              "assets/3.jpg",
                              //fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        CircleAvatar(
                          radius: 27,
                          backgroundImage: AssetImage(
                            "assets/2.jpg",
                            //fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width / 30,
                          ),
                          child: CircleAvatar(
                            radius: 27,
                            backgroundImage: AssetImage(
                              "assets/3.jpg",
                              //fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.bookmark_outlined,
                ),
                label: ''),
            BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 29,
                backgroundColor: Color(0xFF5663FF),
                child: Icon(
                  Icons.add,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notification_important_outlined,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
              ),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xFF6E7FAA),
          selectedIconTheme: IconThemeData(color: Color(0xFF5663FF)),
          unselectedItemColor: Colors.black87,
          unselectedIconTheme: const IconThemeData(color: Color(0xFF6E7FAA)),
          onTap: _onItemTapped,
          showUnselectedLabels: true,
          elevation: 0,
        ),
      ),
    );
  }
}
