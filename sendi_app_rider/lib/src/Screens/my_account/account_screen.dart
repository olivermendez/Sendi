import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  static const String routeName = '/my-account';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => AccountScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyAccount Screen"),
      ),
      body: Container(
          child: ListView(
        children: [
          //Phone Number
          Container(
            height: 60,
            padding: EdgeInsets.only(left: 18, right: 8),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1, color: Color(0xFFEDEDED)))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        "Phone Number",
                        style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 12,
                            fontFamily: 'medium'),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      child: Text(
                        "123",
                        style: TextStyle(
                            color: Color(0xFF787878),
                            fontSize: 13,
                            fontFamily: 'medium'),
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {},
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Change",
                      style: TextStyle(
                          color: Color(0xFFF54D6E),
                          fontSize: 12,
                          fontFamily: 'medium'),
                    ),
                  ),
                )
              ],
            ),
          ),
          //Email
          Container(
            height: 60,
            padding: EdgeInsets.only(left: 18, right: 8),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1, color: Color(0xFFEDEDED)))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        "Email",
                        style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 12,
                            fontFamily: 'medium'),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      child: Text(
                        "hello@s.com",
                        style: TextStyle(
                            color: Color(0xFF787878),
                            fontSize: 13,
                            fontFamily: 'medium'),
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {},
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Change",
                      style: TextStyle(
                          color: Color(0xFFF54D6E),
                          fontSize: 12,
                          fontFamily: 'medium'),
                    ),
                  ),
                )
              ],
            ),
          ),
          //Country
          Container(
            height: 60,
            padding: EdgeInsets.only(left: 18, right: 8),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1, color: Color(0xFFEDEDED)))),
            child: Stack(
              fit: StackFit.expand,
              overflow: Overflow.visible,
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  bottom: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          "Country",
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 12,
                              fontFamily: 'medium'),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(
                      left: 8,
                      right: 8,
                    ),
                    child: Text(
                      "Change",
                      style: TextStyle(
                          color: Color(0xFFF54D6E),
                          fontSize: 12,
                          fontFamily: 'medium'),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: Container(),
                ),
              ],
            ),
          ),
          //Online Status
          InkWell(
            onTap: () {},
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Container(
              height: 60,
              padding: EdgeInsets.only(left: 18, right: 7),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 1, color: Color(0xFFEDEDED)))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          "Online Status",
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 12,
                              fontFamily: 'medium'),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        child: Text(
                          true ? "Online" : "Offline",
                          style: TextStyle(
                              color: Color(0xFF787878),
                              fontSize: 13,
                              fontFamily: 'medium'),
                        ),
                      ),
                    ],
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 2),
                      padding: EdgeInsets.all(10),
                      child: true
                          ? Image.asset(
                              "assets/newIcons/ic_switchOn.png",
                              scale: 3,
                            )
                          : Image.asset(
                              "assets/newIcons/ic_switchOff.png",
                              scale: 3,
                            ))
                ],
              ),
            ),
          ),
          //Member Since
          Container(
            height: 60,
            padding: EdgeInsets.only(left: 18, right: 8),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1, color: Color(0xFFEDEDED)))),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        "Member Since",
                        style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 12,
                            fontFamily: 'medium'),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      child: Text(
                        "May 2020",
                        style: TextStyle(
                            color: Color(0xFF787878),
                            fontSize: 13,
                            fontFamily: 'medium'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
