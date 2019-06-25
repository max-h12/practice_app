import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function addProduct;
  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).primaryColorLight,
      onPressed: () {
        addProduct({'title':'Chocolate','image': 'assests/pic.png'});
      },
      child: Text('Add more'),
    );
  }
}
