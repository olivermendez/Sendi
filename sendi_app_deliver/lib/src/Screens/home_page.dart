import 'package:flutter/material.dart';
import 'package:sendi_app_deliver/src/screens/login.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("./assets/newIcons/ic_animated_bg.png"))),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //Banner
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                              "./assets/newIcons/ic_get_start.png"))),
                ),
              ),
              //Sec2
              Padding(
                padding: EdgeInsets.only(
                    top: 25, bottom: 40, right: 18, left: 18),
                child: Container(
                  child: Text(
                    "Fastest way to deliver at your\nown convenience.",
                    style: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 15,
                      fontFamily: 'medium',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              //Get Started Button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  children: [
                    Expanded(
                      child: MaterialButton(
                        height: 44,
                        onPressed: () {
                          Navigator.of(context).push(_logInRoute());
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2)),
                        color: Color(0xFFF54D6E),
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        elevation: 0,
                        highlightElevation: 0,
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'medium'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //_logInRoute
  Route<dynamic> _logInRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => Login(),
      transitionDuration: Duration(milliseconds: 200),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(1.0, 0.0);
        var end = Offset.zero;
        var curve = Curves.easeInOut;
        var tween = Tween(begin: begin, end: end).chain(
          CurveTween(curve: curve),
        );

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
} 
