import 'package:flutter/material.dart';
import 'package:grocery/repository/CetagoryRepo.dart';
import 'package:grocery/repository/ProductRepo.dart';
import 'package:grocery/views/DailyItemView.dart';
import 'package:grocery/views/itemCetagory.dart';
import 'package:grocery/views/popular%20item.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cetagory = CetagoryRepo();
    final product = ProductRepo();
    final size = MediaQuery.of(context).size;
    return ListView(
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      children: [
        SizedBox(
          height: size.height / 20,
        ),

        Padding(
          padding: const EdgeInsets.all(12.0),
          child: GridView.builder(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemCount: cetagory.Categories.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.8,
                  crossAxisCount: 3),
              itemBuilder: (_, index) {
                return ItemCetagory(
                  title: cetagory.Categories[index].title,
                  image: cetagory.Categories[index].image,
                  color1: cetagory.Categories[index].color1,
                  color2: cetagory.Categories[index].color2,
                );
              }),
        ),

        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Daily item',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Text(
                'View All',
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: SizedBox(
            height: size.height / 3.3,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                itemCount: product.Products.length,
                itemBuilder: (context, index) {
                  return DailyItemView(
                    image: product.Products[index].image,
                    title: product.Products[index].title,
                    price: product.Products[index].price,
                    descreption: product.Products[index].descreption,
                  );
                }),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular item',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Text(
                'View All',
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              itemCount: product.Products.length,
              itemBuilder: (context, index) {
                return PopularItem(
                  image: product.Products[index].image,
                  title: product.Products[index].title,
                  price: product.Products[index].price,
                  descreption: product.Products[index].descreption,
                );
              }),
        ),
      ],
    );
  }
}
