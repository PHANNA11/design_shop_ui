import 'package:design_ui/model/product_model.dart';
import 'package:design_ui/view/view_all_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

List<String> imagesSlide = [
  'https://www.officefurnituresmalaysia.com/wp-content/uploads/2021/11/Tolerance-Modern-Study-Table-and-Chair-Set-Kota-Kemuning-Puchong-Subang-Jaya.jpg',
  'https://www.buyitdirect.ie/Images/BUNKAE00389987_1_Supersize.jpg?width=650&height=650&v=31',
  'https://media.karousell.com/media/photos/products/2023/6/15/table_and_chair_setfree_delive_1686824204_36015a6b_progressive',
  'https://ergonomic.sg/cdn/shop/products/412_631-B_f9f0ad25-7c1e-42b8-8639-4431d353ec55_1000x1000.jpg?v=1672725846',
];

class HomeShopWidget {
  Widget slideImage() {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: ImageSlideshow(
        indicatorColor: Colors.blue,
        onPageChanged: (value) {
          debugPrint('Page changed: $value');
        },
        autoPlayInterval: 3000,
        isLoop: true,
        children: List.generate(
            imagesSlide.length,
            (index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(imagesSlide[index]))),
                  ),
                )),
      ),
    );
  }

  Widget listComponent({List? imageList}) {
    return SizedBox(
      height: 180,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imageList!.length,
        itemBuilder: (context, index) =>
            componentWidget(imageUrl: imageList[index]),
      ),
    );
  }

  Widget componentWidget({required String imageUrl}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(imageUrl))),
      ),
    );
  }

  Widget titleMenu(
    BuildContext context, {
    String title = '',
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ViewAllScreen(),
                  ));
            },
            child: const Text(
              'View All',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.orange),
            ),
          )
        ],
      ),
    );
  }

  Widget gridProduct({List<ProductModel>? products}) {
    return GridView.count(
      childAspectRatio: 10 / 16,
      // physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      children: List.generate(
        products!.length,
        (index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(products[index].image!),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
