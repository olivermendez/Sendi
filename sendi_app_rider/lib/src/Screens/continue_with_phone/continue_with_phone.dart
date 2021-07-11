import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContinueWithPhone extends StatefulWidget {
  //const ContinueWithPhone({Key? key}) : super(key: key);

  static const String routeName = '/phone-auth';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => ContinueWithPhone(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  _ContinueWithPhoneState createState() => _ContinueWithPhoneState();
}

class _ContinueWithPhoneState extends State<ContinueWithPhone> {
  var countryCodeController = TextEditingController(text: '+809');
  var phoneNumberController = TextEditingController();
  String counterText = '0';
  int limit = 7;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: Text("Phone Auth"),
      ),
      body: authWithPhone(context),
    );
  }

  Widget authWithPhone(context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),
          avatar(),
          SizedBox(
            height: 12,
          ),
          Text(
            "Enter your phone",
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "We will send confirmation code to your phone",
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),
          Row(
            children: [
              Expanded(flex: 1, child: countryCodeField(context)),
              SizedBox(
                width: 10,
              ),
              Expanded(flex: 3, child: phoneNumberField(context)),
            ],
          )
        ],
      ),
    );
  }

  Widget phoneNumberField(context) {
    return TextFormField(
      autofocus: true,
      maxLength: 7,
      onChanged: (value) {
        setState(() {
          counterText = value.length.toString();
        });
      },
      keyboardType: TextInputType.phone,
      controller: phoneNumberController,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.only(bottom: 22, top: 22),
          helperMaxLines: 7,
          counterText: '$counterText / 7',
          labelText: 'Number',
          hintText: 'Enter your phone number',
          hintStyle: TextStyle(fontSize: 13, color: Colors.grey)),
    );
  }

  Widget countryCodeField(context) {
    return TextFormField(
      controller: countryCodeController,
      //enabled: false,
      decoration: InputDecoration(labelText: 'Country'),
    );
  }

  Widget avatar() {
    return CircleAvatar(
      radius: 30,
      backgroundColor: Colors.white,
      child: Icon(
        Icons.moped,
        color: Colors.blue,
        size: 60,
      ),
    );
  }
}
