import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int id;
  final Color color;
  Product({
    required this.image,
    required this.title,
    required this.color,
    required this.id,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "LEARNING",
    image: "assets/images/graphics.jpg",
    color: Color.fromARGB(255, 112, 86, 182),
  ),
  Product(
    id: 2,
    title: "GAMING",
    image: "assets/images/games_new.png",
    color: Color.fromARGB(255, 201, 78, 99),
  ),
  Product(
    id: 3,
    title: "ROUTINES",
    image: "assets/images/routine.jpg",
    color: Color.fromARGB(255, 234, 199, 25),
  ),
];
