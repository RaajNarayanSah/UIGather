import 'package:flutter/material.dart';
import 'package:gathrr/constants.dart';
import 'package:gathrr/screens/Forget.dart';
import 'package:gathrr/screens/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 58.0),
              child: Text("gathrr",
                  style: TextStyle(
                    color: Color(0xFF5663FF),
                    fontSize: 48,
                    // fontWeight: FontWeight.bold
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 30, right: 30, top: 40, bottom: 15),
              child: Card(
                color: Color(0xffDEDCFF),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: TextFormField(
                  // style: TextStyle(backgroundColor: Color(0xFF848DFF)),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Colors.white,
                    ),
                    hintText: "Email",
                    hintStyle: TextStyle(color: blueNew),

                    // fillColor: Color(0xFF848DFF),
                    // contentPadding: EdgeInsets.only(left: 10, right: 5)
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, bottom: 5),
              child: Card(
                color: Color(0xffDEDCFF),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: TextFormField(
                  // style: TextStyle(backgroundColor: Color(0xFF848DFF)),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide.none),

                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Colors.white,
                    ),
                    hintText: "Password", hintStyle: TextStyle(color: blueNew),
                    // fillColor: Color(0xFF848DFF),
                    // contentPadding: EdgeInsets.only(left: 10, right: 5)
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 80.0, left: 180),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ForgotPage()));
                },
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(color: Color(0xFF5663FF)),
                ),
              ),
            ),
            SizedBox(
              height: 50,
              width: 320,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: blueNew,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  // backgroundColor: MaterialStateProperty.all(
                  //     Color(0xFF5663FF)), //Background Color
                  // elevation: MaterialStateProperty.all(3), //Defines Elevation
                  // shadowColor: MaterialStateProperty.all(color), //Defines shadowColor
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RegisterPage()));
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
