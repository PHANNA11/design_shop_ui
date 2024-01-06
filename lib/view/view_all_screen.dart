import 'package:design_ui/view%20model/home_shop_widget.dart';
import 'package:design_ui/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../model/product_model.dart';

class ViewAllScreen extends StatefulWidget {
  const ViewAllScreen({super.key});

  @override
  State<ViewAllScreen> createState() => _ViewAllScreenState();
}

class _ViewAllScreenState extends State<ViewAllScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
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
              labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              tabs: [
                Tab(
                  text: 'Chairs',
                ),
                Tab(
                  text: 'Table',
                ),
                Tab(
                  text: 'Bad',
                ),
              ]),
        ),
        body: Column(
          children: [
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '120 products',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Row(
                      children: const [
                        Text(
                          'Popular',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.orange),
                        ),
                        Icon(Icons.arrow_drop_down)
                      ],
                    ),
                  ],
                ),
              ),
            ),

            Expanded(
                flex: 9,
                child: HomeShopWidget().gridProduct(
                    products: List.from(listProducts)..addAll(listProducts)))
            // HomeShopWidget().slideImage(),
            // HomeShopWidget().titleMenu(title: 'Best Seller'),
            // HomeShopWidget().listComponent(imageList: imagesSlide),
            // HomeShopWidget().titleMenu(title: 'Hand-Picks'),
            // HomeShopWidget()
            //    .listComponent(imageList: imagesSlide.reversed.toList())
          ],
        ),
      ),
    );
  }
}
