import 'package:flutter/material.dart';
import 'package:gathrr/constants.dart';
import 'package:gathrr/screens/main_page.dart';

class GpsPage extends StatefulWidget {
  const GpsPage({Key? key}) : super(key: key);

  @override
  _GpsPageState createState() => _GpsPageState();
}

class _GpsPageState extends State<GpsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 108.0, left: 20),
                child: Text("Hi Jeet,",
                    style: TextStyle(
                        color: Color(0xFF5663FF),
                        fontSize: 48,
                        fontFamily: "Josefin Sans"
                        // fontWeight: FontWeight.bold
                        )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Welcome to",
                    style: TextStyle(
                      color: Color(0xFF5663FF),
                      fontSize: 48,
                      // fontWeight: FontWeight.bold
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text("Gathrr!",
                    style: TextStyle(
                      color: Color(0xFF5663FF),
                      fontSize: 48,
                      // fontWeight: FontWeight.bold
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 58.0, left: 20),
                child: Text("Please turn on your GPS to find ",
                    style: TextStyle(
                      color: Color(0xFF5663FF),
                      fontSize: 18,
                      // fontWeight: FontWeight.bold
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text("out better events suggestions ",
                    style: TextStyle(
                      color: Color(0xFF5663FF),
                      fontSize: 18,
                      // fontWeight: FontWeight.bold
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 28.0, left: 20),
                child: Text("near you.",
                    style: TextStyle(
                      color: Color(0xFF5663FF),
                      fontSize: 18,
                      // fontWeight: FontWeight.bold
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 108.0),
                child: Center(
                  child: SizedBox(
                    height: 50,
                    width: 320,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: blueNew,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(25))), //Defines Elevation
                        // shadowColor: MaterialStateProperty.all(color), //Defines shadowColor
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainPage()));
                      },
                      child: Text(
                        'Turn On GPS',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
