import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function addProduct;
  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).primaryColorLight,
      onPressed: () {
        addProduct({'title:':'Chocolate','image:':'assests/food.jpg'});
      },
      child: Text('Add more'),
    );
  }
}
