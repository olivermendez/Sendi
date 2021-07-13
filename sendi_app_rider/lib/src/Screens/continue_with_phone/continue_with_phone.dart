import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sendi_app_deliver/src/components/components.dart';

class ContinueWithPhone extends StatefulWidget {
  //const ContinueWithPhone({Key? key}) : super(key: key);

  //TODO: https://www.youtube.com/watch?v=BoAMhMMiHtM&list=PLLMOQJG4zQsXxmbUSw9ldGtR23m27FC9R&index=4
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
  //controllers
  var countryCodeController = TextEditingController(text: '+809');
  var phoneNumberController = TextEditingController();
  String counterText = '0';
  phoneNumberAuth(number) {
    print(number);
  }

  bool validate = false;

  showAlertDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      content: Row(
        children: [
          CircularProgressIndicator(
            valueColor:
                AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),
          ),
          SizedBox(
            width: 8,
          ),
          Text("Please wait")
        ],
      ),
    );

    showDialog(
        //barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 5,
          title: Text("Phone Auth"),
        ),
        body: principalBody(context),
        bottomNavigationBar: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            //validar la entrada
            child: AbsorbPointer(
              absorbing: validate ? false : true,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: validate
                      ? MaterialStateProperty.all(Colors.green)
                      : MaterialStateProperty.all(Colors.grey),
                ),
                onPressed: () {
                  String number =
                      '${countryCodeController.text}${phoneNumberController.text}';
                  //showAlertDialog(context);

                  phoneNumberAuth(number);

                  Navigator.pushNamed(context, '/home');
                },
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text("Continue"),
                ),
              ),
            ),
          ),
        ));
  }

  Widget principalBody(context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),
          WelcomeAvatar(),
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
          if (value.length == 7) {
            validate = true;
          } else {
            validate = false;
          }
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
}
