class ProductModel {
  int? code;
  String? name;
  String? image;
  String? description;
  double? price;
  String? catagory;
  ProductModel(this.code, this.name, this.price, this.description, this.image,
      this.catagory);
}

List<ProductModel> listProducts = [
  ProductModel(
    1234,
    'Blue Chair',
    134.5,
    ' description',
    'https://www.officefurnituresmalaysia.com/wp-content/uploads/2021/11/Tolerance-Modern-Study-Table-and-Chair-Set-Kota-Kemuning-Puchong-Subang-Jaya.jpg',
    'Chairs',
  ),
  ProductModel(
    6541234,
    'Blue Chair',
    134.5,
    ' description',
    'https://ergonomic.sg/cdn/shop/products/412_631-B_f9f0ad25-7c1e-42b8-8639-4431d353ec55_1000x1000.jpg?v=1672725846',
    'Chairs',
  ),
  ProductModel(
    3455434,
    'Blue Chair Large',
    174.5,
    ' description',
    'https://www.officefurnituresmalaysia.com/wp-content/uploads/2021/11/Tolerance-Modern-Study-Table-and-Chair-Set-Kota-Kemuning-Puchong-Subang-Jaya.jpg',
    'Chairs',
  ),
  ProductModel(
    222234,
    'Blue Chair',
    134.5,
    ' description',
    'https://ergonomic.sg/cdn/shop/products/412_631-B_f9f0ad25-7c1e-42b8-8639-4431d353ec55_1000x1000.jpg?v=1672725846',
    'Chairs',
  ),
  ProductModel(
    6543,
    'Blue Chair',
    134.5,
    ' description',
    'https://media.karousell.com/media/photos/products/2023/6/15/table_and_chair_setfree_delive_1686824204_36015a6b_progressive',
    'Chairs',
  ),
  ProductModel(
    87654,
    'Blue Chair',
    134.5,
    ' description',
    'https://www.buyitdirect.ie/Images/BUNKAE00389987_1_Supersize.jpg?width=650&height=650&v=31',
    'Chairs',
  ),
];
