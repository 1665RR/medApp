import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:med_app/components/products.dart';

void main() {
  runApp( const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: const [
          AssetImage('images/melany-tuinfosalud-com-Y8WJyAmakms-unsplash.jpg'),
          AssetImage('images/melany-tuinfosalud-com-Y8WJyAmakms-unsplash.jpg'),
          AssetImage('images/melany-tuinfosalud-com-Y8WJyAmakms-unsplash.jpg'),
          AssetImage('images/melany-tuinfosalud-com-Y8WJyAmakms-unsplash.jpg'),
      ],
        autoplay: false,
        animationCurve: Curves.fastLinearToSlowEaseIn,
        animationDuration: const Duration(milliseconds: 1000),
      ),
    );

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
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.shopping_cart)),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children:  <Widget>[
            //header
            UserAccountsDrawerHeader(
                accountName: const Text('example'),
                accountEmail: const Text('example@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: const CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
              decoration: const BoxDecoration(
                color: Colors.green,
              ),
            ),

            //body
            InkWell(
              onTap: () {},
              child: const ListTile(
               title: Text('Home Page'),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
               title: Text('My account'),
                leading: Icon(Icons.person),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
               title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children:<Widget> [
          image_carousel,

          //padding widget
          const Padding(
            padding:  EdgeInsets.all(20.0),
            child: Text('Recent products'),
          ),

          //grif view
          Container(
            height: 320.0,
            child: Products(),
          ),
        ],
      ),
    );
  }
}

