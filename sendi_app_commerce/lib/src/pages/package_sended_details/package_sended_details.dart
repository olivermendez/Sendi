import 'package:flutter/material.dart';

class PackageSendedDetails extends StatelessWidget {
  //const PackageSendedDetails({Key? key}) : super(key: key);
  final int index;

  PackageSendedDetails(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Package sended Details"),
      ),
      body: Center(
        child: Text("Page $index"),
      ),
    );
  }
}
