import 'package:flutter/material.dart';
import 'package:grocery/model/Cetagory.dart';

class CetagoryRepo{
  List<Cetagory> Categories = [
    Cetagory(
      title: "Food items",
      image: 'assets/image/category/diet.png',
      color1: Colors.green[100],
      color2: Colors.green,
    ),
    Cetagory(
      title: "Beauty \n & Health",
      image: 'assets/image/category/skincare.png',
      color1: Colors.blue[100],
      color2: Colors.white,
    ),
    Cetagory(
      title: "Medicine",
      image: 'assets/image/category/medicine.png',
      color1: Colors.pink[100],
      color2: Colors.white,
    ),
    Cetagory(
      title: "Baby Care",
      image: 'assets/image/category/baby-boy.png',
      color1: Colors.purple[100],
      color2: Colors.white,
    ),
    Cetagory(
      title: "Pet Care",
      image: 'assets/image/category/pet-care.png',
      color1: Colors.green[100],
    ),
    Cetagory(
      title: "View All",
      image: 'assets/image/category/pet-care.png',
      color1: Colors.green,
    ),
  ];
}