import 'package:flutter/material.dart';
import 'package:sendi_app_commerce/src/pages/home/home_page.dart';
import 'package:sendi_app_commerce/src/pages/package_sended_details/package_sended_details.dart';

class MyShipments extends StatelessWidget {
  //const SendPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.purple,
        title: Text("My Shipments"),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => HomePage()));
          },
        ),
      ),
      body: _builListView(context, 5),
    );
  }

  ListView _builListView(BuildContext context, int items) {
    final _styleTextSubtitle = TextStyle(fontSize: 13.0);

    return ListView.builder(
      itemCount: items,
      itemBuilder: (_, index) {
        return ListTile(
          title: Text("Small Package $index"),
          subtitle: Text(
            "December 19, 2019 at 10:26 pm",
            style: _styleTextSubtitle,
          ),
          //leading: Icon(Icons.send_outlined),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PackageSendedDetails(index)));
          },
        );
      },
    );
  }
}
