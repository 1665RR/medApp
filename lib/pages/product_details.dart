import 'package:flutter/material.dart';
class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_price;
  final product_detail_picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_price,
    this.product_detail_picture
});
  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.green,
        title: (
            const Text('Mediclix')
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.network(widget.product_detail_picture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(widget.product_detail_name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text("\$${widget.product_detail_price}",
                          style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),)
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
            //first button
            Row(
              children: <Widget>[
                Expanded(
                    child: MaterialButton(
                  onPressed: () {
                    showDialog(context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text("Quantity"),
                            content: const Text("Choose the quantity"),
                            actions: <Widget>[
                              MaterialButton(onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                                child: const Text("close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                      elevation: 0.2,
                      child: Row(
                        children:const <Widget> [
                          Expanded(
                              child: Text("Quantity"),
                          ),
                          Expanded(
                              child: Icon(Icons.arrow_drop_down),
                          ),
                        ],
                      ),
                ),
                ),
              ],
            ),
// second button
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.green,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: const Text("Add to cart"),
                ),
              ),
              IconButton(icon: const Icon(Icons.add_shopping_cart, color:Colors.green,), onPressed: (){},),
              IconButton(icon:  const Icon(Icons.favorite_border, color:Colors.green ), onPressed: (){},)
            ],
          ),
          const Divider( color: Colors.grey),
          const ListTile(
            title:  Text("Product details"),
            subtitle: Text("Lorem Ipsum is simply dummy text of printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
          ),
          const Divider(),
          Row(
            children:  <Widget>[
              const Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: Text("Product name", style: TextStyle(color:Colors.grey)),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(widget.product_detail_name),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: Text("Product brand", style: TextStyle(color:Colors.grey)),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(widget.product_detail_name),
              ),
            ],
          ),
          ],
        ));
  }
}
