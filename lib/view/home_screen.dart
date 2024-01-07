import 'package:design_ui/view%20model/home_shop_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shopping_basket_sharp,
                    color: Colors.black,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.black,
                  ))
            ],
            bottom: const TabBar(
                labelColor: Colors.black,
                labelStyle:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                tabs: [
                  Tab(
                    text: 'Featured',
                  ),
                  Tab(
                    text: 'New',
                  ),
                  Tab(
                    text: 'Collection',
                  ),
                ]),
          ),
          body: TabBarView(
              children: [featuredBuilld(), newBuilld(), collectionBuilld()])),
    );
  }

  Widget featuredBuilld() {
    return SingleChildScrollView(
      child: Column(
        children: [
          HomeShopWidget().slideImage(),
          HomeShopWidget().titleMenu(context, title: 'Best Seller'),
          HomeShopWidget().listComponent(imageList: imagesSlide),
          HomeShopWidget().titleMenu(context, title: 'Hand-Picks'),
          HomeShopWidget()
              .listComponent(imageList: imagesSlide.reversed.toList())
        ],
      ),
    );
  }

  Widget newBuilld() {
    return SingleChildScrollView(
      child: Column(
        children: [
          HomeShopWidget().slideImage(),
          HomeShopWidget().titleMenu(context, title: 'Best Seller'),
          HomeShopWidget().listComponent(imageList: imagesSlide),
          HomeShopWidget().titleMenu(context, title: 'Hand-Picks'),
          HomeShopWidget()
              .listComponent(imageList: imagesSlide.reversed.toList())
        ],
      ),
    );
  }

  Widget collectionBuilld() {
    return SingleChildScrollView(
      child: Column(
        children: [
          HomeShopWidget().titleMenu(context, title: 'Brands'),
          HomeShopWidget().listBrand(imageList: imagesSlide),
          HomeShopWidget()
              .titleMenu(context, title: 'Show Room', showViewAll: false),
          HomeShopWidget().slideImage(),
          HomeShopWidget().titleMenu(context, title: 'Discount'),
          HomeShopWidget()
              .listComponent(imageList: imagesSlide.reversed.toList())
        ],
      ),
    );
  }
}
