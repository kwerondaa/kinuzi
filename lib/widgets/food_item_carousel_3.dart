import 'package:flutter/material.dart';
import 'package:kataleminimal/data/foods.dart';

class FoodItemCarousel3 extends StatefulWidget {
  @override
  _FoodItemCarousel3State createState() => _FoodItemCarousel3State();
}

class _FoodItemCarousel3State extends State<FoodItemCarousel3> {
  var foodList = [
    {
      'name': 'pineapple pizza',
      'image': 'images/user.jpg',
      'price': 40000,
      'serves': 4
    },
    {
      'name': 'Luwombo',
      'image': 'images/grilled_chicken2.jpg',
      'price': 40000,
      'serves': 5,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: foodList.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return FoodItem(
            food_name: foodList[index]['name'],
            food_price: foodList[index]['price'],
          );
        });
  }
}

class FoodItem extends StatefulWidget {
  final food_name;
  final food_price;

  FoodItem({this.food_name, this.food_price});

  @override
  _FoodItemState createState() => _FoodItemState();
}

class _FoodItemState extends State<FoodItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 90,
      child: Text('dfd'),
    );
  }
}
