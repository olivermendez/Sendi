import 'package:flutter/material.dart';

class SendPage extends StatelessWidget {
  //const SendPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.purple,
        title: Text("New Send"),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.pop(context);
            //HomePage();
          },
        ),
      ),
    );
  }
}
