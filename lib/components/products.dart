import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "_id": "625fb386ab188f6db9a5121d",
      "picture": "http://placehold.it/32x32",
      "company": "INVENTURE",
      "price": 85,
      "email": "olsenvincent@inventure.com",
      "phone": "+1 (884) 498-3932",
      "address": "462 Mermaid Avenue, Statenville, Michigan, 1259",
      "about": "Aliquip proident minim excepteur incididunt. Id adipisicing dolor dolor laborum. Et tempor magna incididunt magna excepteur sunt exercitation labore non labore aute commodo sint deserunt.\r\n"
    },
    {
      "_id": "625fb3860ec4cc5ca4e8683d",
      "picture": "http://placehold.it/32x32",
      "company": "BICOL",
      "price": 825,
      "email": "olsenvincent@bicol.com",
      "phone": "+1 (875) 551-3661",
      "address": "762 Cobek Court, Crucible, Federated States Of Micronesia, 9331",
      "about": "Lorem non ad dolore sunt. Consequat tempor minim est commodo minim consequat sunt exercitation tempor. Officia irure in et minim officia enim et nostrud ut deserunt. Deserunt do excepteur id deserunt proident.\r\n"
    },
    {
      "_id": "625fb38629114bc0615e94aa",
      "picture": "http://placehold.it/32x32",
      "company": "FLUM",
      "price": 25,
      "email": "olsenvincent@flum.com",
      "phone": "+1 (909) 587-2162",
      "address": "926 Dekalb Avenue, Klondike, New Mexico, 6136",
      "about": "Pariatur laboris qui anim nisi consequat reprehenderit sint quis laboris dolor duis. In nisi ad commodo amet laboris sint Lorem incididunt laboris eu reprehenderit. Est tempor magna dolor Lorem elit duis.\r\n"
    },
    {
      "_id": "625fb386e40a790b70bc4c79",
      "picture": "http://placehold.it/32x32",
      "company": "SCENTY",
      "price": 100,
      "email": "olsenvincent@scenty.com",
      "phone": "+1 (869) 416-3319",
      "address": "376 Hastings Street, Waverly, Virginia, 790",
      "about": "Pariatur cillum sint eiusmod minim exercitation minim. Laborum Lorem ullamco aliqua exercitation adipisicing esse deserunt culpa. Labore ex Lorem ipsum non cupidatat dolore nulla culpa anim. Ea ea veniam exercitation et incididunt do deserunt deserunt pariatur deserunt anim.\r\n"
    },
    {
      "_id": "625fb3861f5a5f8d3dfb02cf",
      "picture": "http://placehold.it/32x32",
      "company": "NETILITY",
      "price": 35,
      "email": "olsenvincent@netility.com",
      "phone": "+1 (929) 422-2887",
      "address": "943 Wakeman Place, Tivoli, Hawaii, 581",
      "about": "Elit in exercitation nostrud ex adipisicing. Adipisicing aliqua anim adipisicing irure mollit elit in sit id velit id cillum elit anim. Excepteur adipisicing pariatur veniam proident.\r\n"
    },
    {
      "_id": "625fb386cbefb41f5cd45342",
      "picture": "http://placehold.it/32x32",
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
          return SingleProduct(
            productName: product_list[index]['name'],
            productPicture: product_list[index]['picture'],
            productPrice: product_list[index]['price'],
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
    return Container(
      child: Text('test'),
    );
  }

}