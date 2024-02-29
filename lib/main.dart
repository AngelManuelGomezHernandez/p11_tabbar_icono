import 'package:flutter/material.dart';

void main() => runApp(AppTabBar());

class AppTabBar extends StatelessWidget {
  const AppTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MiPaginaInicial(),
    );
  }
}

class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MipaginaInicialState();
}

class _MipaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Walmart",
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold)),
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Tu",
                icon: Icon(Icons.person),
              ),
              Tab(
                text: "Comp",
                icon: Icon(Icons.shopping_bag),
              ),
              Tab(
                text: "Prod",
                icon: Icon(Icons.shopping_basket),
              ),
              Tab(
                text: "Car",
                icon: Icon(Icons.shopping_cart),
              ),
              Tab(
                text: "Noti",
                icon: Icon(Icons.notification_add),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(
              Icons.person,
              size: 350,
              color: Color(0xff0044ff),
            ),
            Icon(Icons.shopping_bag, size: 350, color: Color(0xc2993dfb)),
            Icon(Icons.shopping_basket, size: 350, color: Color(0xc23d56fb)),
            Icon(Icons.shopping_cart, size: 350, color: Color(0xc23dacfb)),
            Icon(Icons.notification_add, size: 350, color: Color(0xc27f3dfb)),
          ],
        ),
      ),
    );
  }
}
