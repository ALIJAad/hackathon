import 'package:flutter/material.dart';
import 'package:hackathon/const.dart';
import 'package:hackathon/screens/infor.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: const Image(
            image: AssetImage("images/shape.png"),
          ),
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.favorite_border_outlined,
              color: Colors.black,
              size: 26.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Image(
                image: AssetImage("images/Shape (1).png"),
              ),
            ),
          ),
        ],
        elevation: 0.0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Center(
              child: Container(
                  height: 360,
                  width: 400.0,
                  // height: MediaQuery.of(context).size.height * 0.9,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "images/Bitmap.png",
                      ),
                      // fit: BoxFit.cover,
                    ),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(
                  child: Text(
                    "Perfect Situation Purple Long Sleeve Dress",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                Text(
                  "\$ 25.99",
                  style: TextStyle(color: primarycolor),
                ),
              ],
            ),
          ),
          DefaultTabController(
              length: 2, // length of tabs
              initialIndex: 0,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    const TabBar(
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      tabs: [
                        Tab(text: 'Info '),
                        Tab(text: 'Measurments'),
                      ],
                    ),
                    Container(
                        height: 400, //height of TabBarView
                        decoration: const BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    color: Colors.grey, width: 0.5))),
                        // ignore: prefer_const_constructors
                        child: TabBarView(children: const [
                          Info(),
                          Center(
                            child: Text('Display Tab 2',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold)),
                          ),
                        ]))
                  ])),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tabController.dispose();
    super.dispose();
  }
}
