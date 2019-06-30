import 'package:flutter/material.dart';

class AdressTag extends StatelessWidget {
  final String address;
  AdressTag(this.address);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          border: Border.all(color: Colors.grey, width: 1.0)),
      child: Text(address),
    );
  }
}
