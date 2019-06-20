import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String imgUrl;
  
  ProductPage(this.title, this.imgUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(imgUrl),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text(title),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text("Back"),
              onPressed: () => Navigator.pop(context),
            ),
          )
        ],
      ),
    );
  }
}
