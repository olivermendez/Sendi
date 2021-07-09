import 'package:flutter/material.dart';

class PhoneEntry extends StatelessWidget {
  //const PhoneEntry({Key? key}) : super(key: key);
  final _fontStyle = TextStyle(fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      transformAlignment: AlignmentDirectional.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "What is your phone number?",
            style: _fontStyle,
          ),
          const SizedBox(height: 10),
          Text(
            "We'll send you verification code to your phone via text message",
            textAlign: TextAlign.center,
          ),
          Center(
            child: TextFormField(
              decoration: const InputDecoration(),
            ),
          ),
          const SizedBox(height: 50),
          ElevatedButton(onPressed: () {}, child: Text("Enviar"))
        ],
      ),
    ));
  }
}
