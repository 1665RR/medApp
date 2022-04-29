import 'package:flutter/material.dart';
import 'package:med_app/pages/product_details.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "_id": "625fb386ab188f6db9a5121d",
      "picture": "https://images.unsplash.com/photo-1550572017-4fcdbb59cc32?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1039&q=80",
      "company": "INVENTURE",
      "price": 85,
      "email": "olsenvincent@inventure.com",
      "phone": "+1 (884) 498-3932",
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
      "address": "926 Dekalb Avenue, Klondike, New Mexico, 6136",
      "about": "Pariatur laboris qui anim nisi consequat reprehenderit sint quis laboris dolor duis. In nisi ad commodo amet laboris sint Lorem incididunt laboris eu reprehenderit. Est tempor magna dolor Lorem elit duis.\r\n"
    },
    {
      "_id": "625fb386e40a790b70bc4c79",
      "picture": "https://images.unsplash.com/photo-1633171031508-a8f26271e8aa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
      "company": "SCENTY",
      "price": 100,
      "email": "olsenvincent@scenty.com",
      "phone": "+1 (869) 416-3319",
      "address": "376 Hastings Street, Waverly, Virginia, 790",
      "about": "Pariatur cillum sint eiusmod minim exercitation minim. Laborum Lorem ullamco aliqua exercitation adipisicing esse deserunt culpa. Labore ex Lorem ipsum non cupidatat dolore nulla culpa anim. Ea ea veniam exercitation et incididunt do deserunt deserunt pariatur deserunt anim.\r\n"
    },
    {
      "_id": "625fb3861f5a5f8d3dfb02cf",
      "picture": "https://images.unsplash.com/photo-1614859385191-6021780bd35f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
      "company": "NETILITY",
      "price": 35,
      "email": "olsenvincent@netility.com",
      "phone": "+1 (929) 422-2887",
      "address": "943 Wakeman Place, Tivoli, Hawaii, 581",
      "about": "Elit in exercitation nostrud ex adipisicing. Adipisicing aliqua anim adipisicing irure mollit elit in sit id velit id cillum elit anim. Excepteur adipisicing pariatur veniam proident.\r\n"
    },
    {
      "_id": "625fb386cbefb41f5cd45342",
      "picture": "https://images.unsplash.com/photo-1599451897608-ad6eb8676edf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
      "company": "ENTHAZE",
      "price": 40,
      "email": "olsenvincent@enthaze.com",
      "phone": "+1 (927) 486-3097",
      "address": "761 Dooley Street, Diaperville, New Hampshire, 4163",
      "about": "Irure exercitation in in dolore exercitation. Ex cillum sit non mollit voluptate laboris laborum fugiat pariatur non incididunt veniam voluptate. Fugiat amet ipsum aliqua in anim tempor culpa ut cupidatat nisi pariatur. Tempor commodo do eu do excepteur elit pariatur in cupidatat. Cupidatat Lorem elit commodo est ut sit veniam labore excepteur excepteur non exercitation ea.\r\n"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: SingleProduct(
              productName: product_list[index]['company'],
              productPicture: product_list[index]['picture'],
              productPrice: product_list[index]['price'],),
          );
        }
  );
}}

class SingleProduct extends StatelessWidget {

  final productName;
  final productPicture;
  final productPrice;

  SingleProduct({
    this.productName,
    this.productPicture,
    this.productPrice,
  });


  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: productName,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>
                    ProductDetails(
                      product_detail_name: productName,
                      product_detail_picture: productPicture,
                      product_detail_price: productPrice,
                    ),
              ),
            ),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    productName,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    "\€$productPrice",
                    style: const TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              child: Image.network(productPicture, fit: BoxFit.cover),
            ),
          ),
        ),
      ),
    );
  }
}