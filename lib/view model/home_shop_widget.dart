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
List<String> brandImage = [
  'https://wallpapercave.com/wp/PVZLEqu.jpg',
  'https://www.designyourway.net/blog/wp-content/uploads/2019/08/1985-logo-700x421.jpg',
  'https://luxuryheterotopia.files.wordpress.com/2017/03/gucci-logo-3.jpg?w=682&h=441',
  'https://assets.turbologo.com/blog/en/2020/01/19084709/louis-vuitton-primary-logo.png',
  'https://cdn.mos.cms.futurecdn.net/6bTF6C2QiWXvhi33fJi3AC-320-80.jpg',
  'https://1000logos.net/wp-content/uploads/2016/10/Air-Jordan-Logo-history-500x403.jpg',
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

  Widget listBrand({List? imageList}) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: brandImage.length,
        itemBuilder: (context, index) => componentWidget(
            imageUrl: brandImage[index], height: 100, width: 80),
      ),
    );
  }

  Widget componentWidget(
      {required String imageUrl, double? height, double? width}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: height ?? 150,
        width: width ?? 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(imageUrl))),
      ),
    );
  }

  Widget titleMenu(BuildContext context,
      {String title = '', bool? showViewAll = true}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const Spacer(),
          showViewAll!
              ? TextButton(
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
              : const SizedBox()
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
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(products[index].name.toString()),
            ),
          ),
        ),
      ),
    );
  }
}
