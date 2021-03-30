import 'package:grocery/model/product.dart';

class ProductRepo{
  List<Product> Products = [
    Product(
      image: "assets/image/product/oil.png",
      title: "Daily Needs oil pack",
      descreption: "Lorem Ipsum is simply dummy text",
      price: 80,
    ),
    Product(
      image: "assets/image/product/fruits.png",
      title: "Fruits Pack",
      descreption: "Lorem Ipsum is simply dummy text",
      price: 50,
    ),
    Product(
      image: "assets/image/product/mosla.png",
      title: "Mosla pack",
      descreption: "Lorem Ipsum is simply dummy text",
      price: 65,
    ),
    Product(
      image: "assets/image/product/chicken-meat.png",
      title: "Meat Pack",
      descreption: "Lorem Ipsum is simply dummy text",
      price: 121,
    ),
    Product(
      image: "assets/image/product/beef-meat.png",
      title: "Beef Meat Pack",
      descreption: "Lorem Ipsum is simply dummy text",
      price: 180,
    ),
  ];
}