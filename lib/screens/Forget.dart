import 'package:flutter/material.dart';
import 'package:gathrr/constants.dart';
import 'package:gathrr/screens/login.dart';

class ForgotPage extends StatefulWidget {
  const ForgotPage({Key? key}) : super(key: key);

  @override
  _ForgotPageState createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF5663FF), Color(0xFF151635)])),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 8.0, right: 52, bottom: 30, top: 10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 31,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 36, bottom: 20, top: 10),
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 48.0),
                child: Text(
                  "Enter your email and will send",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 58.0),
                child: Text(
                  "you instructions on how to reset it",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, bottom: 80),
                child: Card(
                  color: Color(0xff8A98BA),
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
                        hintStyle: TextStyle(color: Colors.white)
                        // fillColor: Color(0xFF848DFF),
                        // contentPadding: EdgeInsets.only(left: 10, right: 5)
                        ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 258.0),
                child: SizedBox(
                  height: 50,
                  width: 320,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(25))), //Defines Elevation
                      // shadowColor: MaterialStateProperty.all(color), //Defines shadowColor
                    ),
                    onPressed: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => RegisterPage()));
                    },
                    child: Text(
                      'Send',
                      style: TextStyle(color: Color(0xFF5663FF), fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
