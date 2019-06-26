import 'package:flutter/material.dart';
import 'package:practice_app/pages/products.dart';
import './pages/products_admin.dart';

import './pages/auth.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.deepOrange, accentColor: Colors.deepPurple),
      home: AuthPage(),
      routes: {
        '/admin': (BuildContext context) => ProductsAdminPage()
      },
    );
  }
}
