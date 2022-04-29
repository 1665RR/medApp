import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:med_app/components/products.dart';
import 'package:med_app/pages/cart.dart';
import 'package:med_app/components/horizontal_listview.dart';

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
          NetworkImage('https://images.unsplash.com/photo-1618120508902-c8d05e7985ee?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
          NetworkImage('https://images.unsplash.com/photo-1543363363-6dbd3125fb6d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80'),
          NetworkImage('https://images.unsplash.com/photo-1587291085754-df33cc8b6edd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=665&q=80'),
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
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Cart()));
              },
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
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Cart()));
              },
              child: const ListTile(
               title: Text('Shopping cart'),
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
            child: Text('Categories'),
          ),
          Category(),

          //padding widget
           Padding(
            padding:  EdgeInsets.all(20.0),
            child:Container(
              alignment: Alignment.centerLeft,
              child: Text('Recent products'),
            ),
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

