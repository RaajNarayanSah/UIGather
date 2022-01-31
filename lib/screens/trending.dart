import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gathrr/screens/filter.dart';
import 'package:gathrr/screens/main_page.dart';

class TrendingPage extends StatefulWidget {
  const TrendingPage({Key? key}) : super(key: key);

  @override
  _TrendingPageState createState() => _TrendingPageState();
}

class _TrendingPageState extends State<TrendingPage> {
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
        body: Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height / 60),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 30,
                          right: MediaQuery.of(context).size.width / 30,
                          bottom: MediaQuery.of(context).size.height / 17,
                          top: MediaQuery.of(context).size.height / 28),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MainPage()));
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 31,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 7,
                          bottom: MediaQuery.of(context).size.height / 25,
                          top: MediaQuery.of(context).size.height / 52),
                      child: Text(
                        "Trending Events",
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 30,
                      right: MediaQuery.of(context).size.width / 30,
                      bottom: MediaQuery.of(context).size.height / 60),
                  child: Card(
                    elevation: 10,
                    // color: Color(0xffDEDCFF),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: SizedBox(
                      width: 460,
                      child: TextFormField(
                        // style: TextStyle(backgroundColor: Color(0xFF848DFF)),
                        decoration: InputDecoration(
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),

                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black26,
                          ),
                          suffixIcon: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => FilterPage()));
                            },
                            child: Icon(
                              Icons.tune_outlined,
                              color: Colors.black26,
                            ),
                          ),
                          hintText: "Search",
                          // fillColor: Color(0xFF848DFF),
                          // contentPadding: EdgeInsets.only(left: 10, right: 5)
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 30,
                      top: MediaQuery.of(context).size.height / 90),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2.6,
                    width: MediaQuery.of(context).size.width,
                    // color: Colors.blue,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 1,
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
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Text(
                                          "Happy Bones ",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 5.0),
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
                                                          color:
                                                              Colors.white))),
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Color(0xFFFF5673))),
                                          onPressed: () {},
                                          child: Text(
                                            "Paid",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        )),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
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
                                                          color:
                                                              Colors.white)))),
                                          onPressed: () {},
                                          child: Text(
                                            "1.2 Km",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        )),
                                      ),
                                      Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 12.0),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 35.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Align(
                                                  widthFactor: 0.5,
                                                  child: CircleAvatar(
                                                    backgroundColor:
                                                        Colors.white,
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
                                                    backgroundColor:
                                                        Colors.white,
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
                                                    backgroundColor:
                                                        Colors.white,
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
                                                    backgroundColor:
                                                        Colors.white,
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
                                        "394 Broome St, New York, NY 10013, USA"),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 30,
                      top: MediaQuery.of(context).size.height / 60),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2.6,
                    width: MediaQuery.of(context).size.width,
                    // color: Colors.blue,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 1,
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
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Text(
                                          "Happy Bones",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 5.0),
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
                                                          color:
                                                              Colors.white))),
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Color(0xFFFF5673))),
                                          onPressed: () {},
                                          child: Text(
                                            "Paid",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        )),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
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
                                                          color:
                                                              Colors.white)))),
                                          onPressed: () {},
                                          child: Text(
                                            "1.2 Km",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        )),
                                      ),
                                      Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 12.0),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 35.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Align(
                                                  widthFactor: 0.5,
                                                  child: CircleAvatar(
                                                    backgroundColor:
                                                        Colors.white,
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
                                                    backgroundColor:
                                                        Colors.white,
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
                                                    backgroundColor:
                                                        Colors.white,
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
                                                    backgroundColor:
                                                        Colors.white,
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
                                        "394 Broome St, New York, NY 10013, USA"),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ),
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
              icon: Icon(
                Icons.add_circle,
                size: 50,
                color: Color(0xFF5663FF),
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
