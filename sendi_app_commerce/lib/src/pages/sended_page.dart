import 'package:flutter/material.dart';
import 'package:sendi_app_commerce/src/pages/home_page.dart';

class SendedPage extends StatelessWidget {
  //const SendPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.purple,
        title: Text("Package Sended"),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => HomePage()));
          },
        ),
      ),
    );
  }
}
