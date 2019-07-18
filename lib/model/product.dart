class Product {
  String img;
  String title;
  String price;

  Product({this.img, this.title, this.price});

  @override
  String toString() {
    return 'Product{img: $img, title: $title, price: $price}';
  }
}
