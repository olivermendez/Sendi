import 'package:flutter/material.dart';

class ShowAlertDialog extends StatelessWidget {
  const ShowAlertDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
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
  }
}
