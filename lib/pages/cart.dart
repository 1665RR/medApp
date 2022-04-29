import 'package:flutter/material.dart';

import 'package:med_app/components/cart_products.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.green,
        title: (
            const Text('Mediclix')
        ),
        actions: <Widget>[
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.search)),
        ],
      ),
      body: Cart_products(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(child: ListTile(
              title: Text("Total:"),
              subtitle: Text("\$230"),
            )),
            Expanded(child: MaterialButton(onPressed: (){},
            child: const Text("Check out",
              style:TextStyle(color:Colors.white),
            ),
              color:Colors.green,
            )),
          ],
        ),
      ),
    );
  }
}
