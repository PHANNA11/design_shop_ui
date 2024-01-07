import 'package:design_ui/view%20model/home_shop_widget.dart';
import 'package:flutter/material.dart';
import '../model/product_model.dart';

class ViewAllScreen extends StatefulWidget {
  const ViewAllScreen({super.key});

  @override
  State<ViewAllScreen> createState() => _ViewAllScreenState();
}

class _ViewAllScreenState extends State<ViewAllScreen> {
  List<String> categotys = ['Chairs', 'Table', 'Bad'];
  List<ProductModel> filter = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      filter.clear();
      filter.addAll(
          listProducts.where((element) => element.cateId == 0).toList());
    });
  }

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
          bottom: TabBar(
              labelColor: Colors.black,
              onTap: (value) {
                setState(() {
                  filter.clear();
                  filter.addAll(listProducts
                      .where((element) => element.cateId == value)
                      .toList());
                });
              },
              labelStyle:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              tabs: List.generate(
                  categotys.length,
                  (index) => Tab(
                        text: categotys[index],
                      ))),
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
                flex: 9, child: HomeShopWidget().gridProduct(products: filter))
          ],
        ),
      ),
    );
  }
}
