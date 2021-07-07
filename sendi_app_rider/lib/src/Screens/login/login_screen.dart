import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sendi_app_deliver/src/screens/add_card.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obscureText = true;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        child: Column(
          children: [
            //Appbar
            Container(
              height: 50,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Positioned(
                    left: 4,
                    top: 0,
                    bottom: 0,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(
                          "assets/newIcons/ic_back.png",
                          width: 15,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            //Body
            Expanded(
                child: Form(
              key: _formKey,
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 18),
                  child: ListView(
                    children: [
                      SizedBox(
                        height: 53,
                      ),
                      //Login Text
                      Container(
                        child: Text(
                          "Log in",
                          style: TextStyle(
                              color: Color(0xFFF54D6E),
                              fontSize: 15,
                              fontFamily: "medium"),
                        ),
                      ),
                      //Email Text Field
                      Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 1, color: Color(0xFFEDEDED)))),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          cursorColor: Color(0xFFF54D6E),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 5),
                            border: InputBorder.none,
                            hintText: "Email",
                            hintStyle: TextStyle(
                              color: Color(0xFF787878),
                              fontSize: 14,
                              fontFamily: "regular",
                            ),
                          ),
                          style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 14,
                            fontFamily: "medium",
                          ),
                        ),
                      ),
                      //Password Text Field
                      Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(vertical: 4),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 1, color: Color(0xFFEDEDED)))),
                        child: Stack(
                          children: [
                            TextFormField(
                              obscureText: _obscureText,
                              cursorColor: Color(0xFFF54D6E),
                              controller: password,
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(top: 0),
                                border: InputBorder.none,
                                hintText: "Password",
                                hintStyle: TextStyle(
                                  color: Color(0xFF787878),
                                  fontSize: 14,
                                  fontFamily: "regular",
                                ),
                              ),
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: "medium",
                              ),
                            ),
                            Positioned(
                              right: -8,
                              top: 6,
                              child: InkWell(
                                onTap: () {
                                  _toggle();
                                },
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: _obscureText
                                        ? Image.asset(
                                            "assets/newIcons/ic_hide.png",
                                            scale: 3.2,
                                            color: Color(0xFFF54D6E))
                                        : Image.asset(
                                            "assets/newIcons/ic_show.png",
                                            scale: 3.2,
                                            color: Color(0xFFF54D6E))),
                              ),
                            )
                          ],
                        ),
                      ),
                      //Login Button
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 33),
                        child: Row(
                          children: [
                            Expanded(
                              child: MaterialButton(
                                height: 44,
                                onPressed: () {
                                  FocusScope.of(context)
                                      .requestFocus(FocusNode());
                                  Navigator.of(context)
                                      .push(_myOrdersScreenRoute());
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)),
                                color: Color(0xFFF54D6E),
                                highlightColor: Colors.transparent,
                                splashColor: Colors.transparent,
                                elevation: 0,
                                highlightElevation: 0,
                                child: Text(
                                  "Log in",
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
                  )),
            )),
          ],
        ),
      ),
    ));
  }

  //_myOrdersScreenRoute
  Route _myOrdersScreenRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => AddCard(),
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
