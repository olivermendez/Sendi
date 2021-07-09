import 'package:flutter/material.dart';

class PhoneEntry extends StatefulWidget {
  //const PhoneEntry({Key? key}) : super(key: key);
  @override
  _PhoneEntryState createState() => _PhoneEntryState();
}

class _PhoneEntryState extends State<PhoneEntry> {
  final _fontStyle = TextStyle(fontSize: 20.0);

  var _phoneVerification = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: _phoneVerification,
      child: Container(
        transformAlignment: AlignmentDirectional.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "What is your phone number?",
              style: _fontStyle,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "We'll send you verification code to your phone via text message",
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: 350,
              child: Center(
                child: _inputPhoneVerification(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    if (_phoneVerification.currentState!.validate()) {
                      print("okey");
                    }
                  },
                  child: Text("Enviar")),
            )
          ],
        ),
      ),
    ));
  }

  Widget _inputPhoneVerification() {
    return TextFormField(
      validator: (String? value) {
        if (value != null && value.isEmpty) {
          return "Phone number field is empty";
        }
        return null;
      },
      decoration: const InputDecoration(labelText: "Phone number"),
    );
  }
}
