import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String itemNama;
  final String itemAsal;
  final String itemImage;
  final String itemBio;

  const DetailPage(
      {Key key, this.itemNama, this.itemAsal, this.itemImage, this.itemBio})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          'Biografi ' + itemNama,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Image.network(
                  itemImage,
                  height: 200.0,
                  width: 500.0,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Text(
                  itemNama,
                  style: TextStyle(color: Colors.blueAccent, fontSize: 24.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 20.0),
                child: Container(
                  height: 3.0,
                  width: 400.0,
                  color: Colors.blueAccent,
                ),
              ),
              Text(itemBio),
            ],
          ),
        ),
      ),
    );
  }
}
