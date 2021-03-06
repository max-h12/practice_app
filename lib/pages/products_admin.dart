import 'package:flutter/material.dart';
import './product_edit.dart';
import './product_list.dart';

class ProductsAdminPage extends StatelessWidget {
  final Function addProduct;
  final Function deleteProduct;
  final Function updateProduct;
  final List<Map<String, dynamic>>products;

  ProductsAdminPage(this.addProduct, this.updateProduct, this.deleteProduct, this.products);

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: Text('Choose'),
            automaticallyImplyLeading: false,
          ),
          ListTile(
            leading: Icon(Icons.shop),
            title: Text('All Products'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/products');
            },
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'Create Product',
                icon: Icon(Icons.create),
              ),
              Tab(
                text: 'My Products',
                icon: Icon(Icons.list),
              ),
            ],
          ),
          title: Text('Mangage Products'),
        ),
        drawer: _buildDrawer(context),
        body: TabBarView(
          children: <Widget>[
            ProductEditPage(addProduct: addProduct),
            ProductListPage(products, updateProduct, deleteProduct),
          ],
        ),
      ),
    );
  }
}
