import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  //const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            color: Colors.black,
            icon: Icon(
              Icons.menu,
              size: 27,
            ),
            onPressed: () {},
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Your Account",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Info about the account",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SingleChildScrollView(
                    padding: EdgeInsets.only(bottom: 20),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.90,
                          height: 200,
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 20),
                          //tarjeta
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.yellow[100],
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 0,
                                  offset: Offset(0, 1),
                                  blurRadius: 0,
                                  color: Colors.black.withOpacity(0.2))
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "DOS: 12,105.67",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w500),
                              ),
                              Container(
                                child: Text(
                                  'Made today',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              Expanded(
                                  child: Container(
                                //imagen de vehiculo aqui
                                decoration: BoxDecoration(),
                              )),
                              SizedBox(
                                height: 15,
                              ),
                              Text("Completa mas viajes",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500)),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
