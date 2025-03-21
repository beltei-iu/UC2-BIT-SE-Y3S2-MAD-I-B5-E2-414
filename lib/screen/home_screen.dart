import 'package:flutter/material.dart';
import 'package:mad/routes/app_route.dart';
import 'package:mad/screen/product_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLove = false;

  @override
  Widget build(BuildContext context) {
    // Create Control
    final text = Text("Welcome to BELTEI");
    final topImage = Container(
      child: Image.asset("assets/images/beltei_intake2.png",
          fit: BoxFit.cover, width: MediaQuery.of(context).size.width),
    );

    // configuration / state
    int number = 10;

    // Widget1
    final text1 = Text("This is state $number");
    // Widget2
    final text2 = Text("This is state $number");

    final icon = Icon(
      Icons.heart_broken,
      size: 30,
    );

    final icon2 = Icon(
      size: 30,
      Icons.heart_broken,
      color: Colors.red,
    );

    // final layout = Center(
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       text1,
    //       text2,
    //       GestureDetector(
    //         child: isLove ? icon2 : icon,
    //         onTap: () {
    //           setState(() {
    //             isLove = !isLove;
    //           });
    //         },
    //       )
    //     ],
    //   ),
    // );

    final _appBar = AppBar(
      leading: Icon(Icons.menu),
      elevation: 5,
      actions: [Icon(Icons.notifications)],
    );

    final newMenu = Padding(
      padding: EdgeInsets.only(top: 16, left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("ថ្មីៗ"),
          Row(
            children: [Text("ទាំងអស់"), Icon(Icons.navigate_next)],
          )
        ],
      ),
    );

    List<String> productList = ["iPhone", "Sumsung", "Sony", "LG"];

    final favorite = Icon(Icons.favorite);
    final favorite2 = Icon(
      Icons.favorite,
      color: Colors.red,
    );

    final productNewList = productList.map((e) {
      return GestureDetector(
        child: Card(
          child: Column(
            children: [
              Image.asset("assets/images/image.png"),
              Text("$e"),
              Text("1000\$"),
              Align(
                alignment: Alignment.centerRight,
                child: isLove ? favorite2 : favorite,
              )
            ],
          ),
        ),
        onTap: () {
          // Option 1

          // final route = MaterialPageRoute(
          //     builder: (context) => ProductDetailScreen(
          //           productName: e,
          //         ));
          // Navigator.push(context, route);

          // Option 2
          AppRoute.key.currentState!
              .pushNamed(AppRoute.productDetailScreen, arguments: e);
        },
      );
    }).toList();

    // Option 1
    final productNewListWidget = SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: productNewList,
      ),
    );

    // Option 2
    final productNewListWidget2 = Container(
      height: 170,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: productNewList,
      ),
    );

    // Create Screen
    final screen = Scaffold(
      appBar: _appBar,
      body: ListView(
        children: [topImage, newMenu, productNewListWidget],
      ),
    );
    return screen;
  }
}
