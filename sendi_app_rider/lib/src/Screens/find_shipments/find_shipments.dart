import 'package:flutter/material.dart';
import 'package:sendi_app_deliver/models/packages/package_event_model.dart';

class FindShipments extends StatelessWidget {
  //const FindShipments({Key? key}) : super(key: key);

  List<PackageOnloadModel> packagesData = [
    PackageOnloadModel(
        id: 1,
        titlePackage: 'Package 25 lb',
        itemCount: 3,
        destination: 'Av 27 de Febrero, esquina Luperon',
        details: 'Estufa pequena',
        ridePrice: 325,
        status: 'Available',
        from: 'Company 0'),
    PackageOnloadModel(
        id: 2,
        titlePackage: 'Package 30 lb',
        itemCount: 1,
        destination: 'Av 27 de Febrero, esquina Gomez',
        details: 'Mascota',
        ridePrice: 325,
        status: 'Available',
        from: 'Company 1'),
    PackageOnloadModel(
        id: 3,
        titlePackage: 'Package 35 lb',
        itemCount: 1,
        destination: 'Ensache la Fe',
        details: 'Betella de vino',
        ridePrice: 325,
        status: 'Sended',
        from: 'Company 2'),
    PackageOnloadModel(
        id: 3,
        titlePackage: 'Package 50 lb',
        itemCount: 1,
        destination: 'Ensache la Fe',
        details: 'Betella de vino',
        ridePrice: 455,
        status: 'Sended',
        from: 'Company 3')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Find Shipments"),
        ),
        body: lisView());
  }

  Widget buildCard() {
    return Container(
      child: Card(
        color: Colors.grey,
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            ListTile(
              leading: Image.network(
                  'https://images.pexels.com/photos/170811/pexels-photo-170811.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
              title: const Text('BMW X7 2015'),
              isThreeLine: true,
              subtitle: Text(
                'Secondary Text',
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.start,
              children: [
                FlatButton(
                  textColor: const Color(0xFF6200EE),
                  onPressed: () {
                    // Perform some action
                  },
                  child: const Text('ACTION 1'),
                ),
                FlatButton(
                  textColor: const Color(0xFF6200EE),
                  onPressed: () {
                    // Perform some action
                  },
                  child: const Text('ACTION 2'),
                ),
              ],
            ),
            //Image.asset('assets/card-sample-image.jpg'),
            //Image.asset('assets/card-sample-image-2.jpg'),
          ],
        ),
      ),
    );
  }

  Widget lisView() {
    return ListView(
      children: [
        todayText(),
        Divider(
          height: 1,
        ),
        _builingCards(),
        Divider(),
        yestardayText(),
        Divider(),
        _builingCards(),
      ],
    );
  }

  Widget todayText() {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 20),
      child: Container(
        height: 50,
        transformAlignment: Alignment.centerLeft,
        child: Text("Today",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
      ),
    );
  }

  Widget yestardayText() {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 20),
      child: Container(
        height: 50,
        transformAlignment: Alignment.centerLeft,
        child: Text("Yesterday",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ),
    );
  }

  Widget _builingCards() {
    return Card(
      color: Colors.grey[100],
      elevation: 1,
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: packagesData
            .map((e) => ListTile(
                  isThreeLine: true,
                  onTap: () {},
                  title: Text(e.titlePackage.toString()),
                  subtitle: Text("Dest: " + e.destination.toString()),
                  trailing: Text(e.status.toString() + '\n${e.ridePrice}'),
                ))
            .toList(),
      ),
    );
  }

  Widget PackagesOn(int itemCount, String cardTitle, String cardSubtitle) {
    return ListView.builder(
        itemCount: itemCount,
        itemBuilder: (context, int index) {
          return Container(
            child: Card(
              color: Colors.grey[100],
              elevation: 1,
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.send,
                      size: 35,
                    ),
                    title: Text(cardTitle),
                    subtitle: Text(
                      cardSubtitle,
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.6), fontSize: 10),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.6), fontSize: 15),
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      _statusButton(),
                      _buttonEnviar(),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }

  Widget PackagesOff(int itemCount, String cardTitle, String cardSubtitle) {
    return ListView.builder(
        itemCount: itemCount,
        itemBuilder: (context, int index) {
          return Container(
            child: Card(
              color: Colors.red[50],
              elevation: 1,
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.send,
                      size: 35,
                    ),
                    title: Text(cardTitle),
                    subtitle: Text(
                      cardSubtitle,
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.6), fontSize: 10),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.6), fontSize: 15),
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      _statusButton(),
                      _buttonEnviar(),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }

  Widget _statusButton() {
    return TextButton(
      onPressed: () {
        // Perform some action
      },
      child: Text('Status: \nAvailable'),
    );
  }

  Widget _buttonEnviar() {
    return ElevatedButton(
      onPressed: () {
        // Perform some action
      },
      child: const Text('Send Now'),
    );
  }
}
