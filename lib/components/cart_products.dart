import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  const Cart_products({Key? key}) : super(key: key);

  @override
  State<Cart_products> createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {

  var product_on_the_cart = [
    {
    "_id": "625fb386ab188f6db9a5121d",
    "picture": "https://images.unsplash.com/photo-1550572017-4fcdbb59cc32?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1039&q=80",
    "company": "INVENTURE",
    "price": 85,
    "email": "olsenvincent@inventure.com",
    "phone": "+1 (884) 498-3932",
      "quantity":1,
    "address": "462 Mermaid Avenue, Statenville, Michigan, 1259",
    "about": "Aliquip proident minim excepteur incididunt. Id adipisicing dolor dolor laborum. Et tempor magna incididunt magna excepteur sunt exercitation labore non labore aute commodo sint deserunt.\r\n"
  },
    {
      "_id": "625fb3860ec4cc5ca4e8683d",
      "picture": "https://images.unsplash.com/photo-1618120508902-c8d05e7985ee?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      "company": "BICOL",
      "price": 825,
      "email": "olsenvincent@bicol.com",
      "phone": "+1 (875) 551-3661",
      "quantity":2,
      "address": "762 Cobek Court, Crucible, Federated States Of Micronesia, 9331",
      "about": "Lorem non ad dolore sunt. Consequat tempor minim est commodo minim consequat sunt exercitation tempor. Officia irure in et minim officia enim et nostrud ut deserunt. Deserunt do excepteur id deserunt proident.\r\n"
    },
    {
      "_id": "625fb38629114bc0615e94aa",
      "picture": "https://images.unsplash.com/photo-1599451897608-ad6eb8676edf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
      "company": "FLUM",
      "price": 25,
      "email": "olsenvincent@flum.com",
      "phone": "+1 (909) 587-2162",
      "quantity":1,
      "address": "926 Dekalb Avenue, Klondike, New Mexico, 6136",
      "about": "Pariatur laboris qui anim nisi consequat reprehenderit sint quis laboris dolor duis. In nisi ad commodo amet laboris sint Lorem incididunt laboris eu reprehenderit. Est tempor magna dolor Lorem elit duis.\r\n"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: product_on_the_cart.length,
      itemBuilder: (BuildContext context, int index){
        return SingleCartProduct(
          cart_product_name: product_on_the_cart[index]['company'],
          cart_product_price: product_on_the_cart[index]['price'],
          cart_product_picture: product_on_the_cart[index]['picture'],
            cart_product_quantity: product_on_the_cart[index]['quantity'],
        );
      }
    );
  }
}

class SingleCartProduct extends StatelessWidget {
  final cart_product_name;
  final cart_product_price;
  final cart_product_picture;
  final cart_product_quantity;

  SingleCartProduct({
     this.cart_product_name,
    this.cart_product_price,
    this.cart_product_picture,
    this.cart_product_quantity,
});


  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(
          cart_product_picture,
          width: 100.0,
          height: 80.0,
        ),
        title: Text(cart_product_name),
        subtitle: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "\$$cart_product_price",
                style: const TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ),
          ],
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Expanded(
              child: IconButton(
                padding: EdgeInsets.zero,
                icon: const Icon(Icons.arrow_drop_up),
                onPressed: () {},
              ),
            ),
            Text("$cart_product_quantity"),
            Expanded(
              child: IconButton(
                padding: EdgeInsets.zero,
                icon: const Icon(Icons.arrow_drop_down),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
