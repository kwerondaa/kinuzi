import 'package:flutter/material.dart';

class FoodItem {
  final String foodName,
      imagePath,
      description,
      duration,
      price,
      serves,
      difficulty;
  final List categoryIds, ingredients, tools, steps;

  FoodItem(
      {this.foodName,
      this.imagePath,
      this.duration,
      this.description,
      this.difficulty,
      this.serves,
      this.price,
      this.categoryIds,
      this.ingredients,
      this.tools,
      this.steps});
}

final bologneseSauce = FoodItem(
    foodName: 'Bolognese sauce',
    imagePath: 'images/grilled_chicken2.jpg',
    duration: '20 MIN',
    description:
        'Our spaghetti bolognese is super easy and a true Italian classic with a meaty, chilli sauce',
    difficulty: 'EASY',
    serves: '4 people',
    price: 'Ush.20,000',
    categoryIds: [
      0,
      1
    ],
    ingredients: [
      'One two medium onions',
      'Two bell/green pepper',
      '1 carrot',
      '2 garlic cloves',
      '3 tbsn tomato paste',
      'Salt and pepper to taste',
      'Half glass of milk',
      'Half glass water',
      '500g minced meat',
      '2 tbsp Cooking oil',
    ],
    steps: [
      '1. In a pan, add the minced beef, Cook for only 2 minutes over medium heat.After the meat changing color from pinkish to brown, add 3tbsn of margarine and carrots. Combine well and stir continuously.',
      '2. Add diced onions, garlic and green peppers..Season with salt and black pepper. Continue stirring gently',
      '3. After like 5minutes when vegetables are turning soft, add tomato paste and keep on stirring.',
      '4. Add Dania and half glass of milk and combine well, making sure heat is not high',
      '5. Add half glass of water.. combine well and cook for approximately 13 minutes until gravy reduces and the sauce is thick',
      '6. When the bolognese is nearly finished, cook 400g spaghetti following the pack instructions.',
      '7. Drain the spaghetti and stir into the bolognese sauce.'
    ]);

final spaghetiSauc = FoodItem(
    foodName: 'Spagheti Sauc',
    imagePath: 'images/grilled_chicken2.jpg',
    duration: '20 MIN',
    description:
        'Our spaghetti bolognese is super easy and a true Italian classic with a meaty, chilli sauce',
    difficulty: 'EASY',
    serves: '4 people',
    price: 'Ush.20,000',
    categoryIds: [
      0,
      2
    ],
    ingredients: [
      'One two medium onions',
      'Two bell/green pepper',
      '1 carrot',
      '2 garlic cloves',
      '3 tbsn tomato paste',
      'Salt and pepper to taste',
      'Half glass of milk',
      'Half glass water',
      '500g minced meat',
      '2 tbsp Cooking oil',
    ],
    steps: [
      '1. In a pan, add the minced beef, Cook for only 2 minutes over medium heat.After the meat changing color from pinkish to brown, add 3tbsn of margarine and carrots. Combine well and stir continuously.',
      '2. Add diced onions, garlic and green peppers..Season with salt and black pepper. Continue stirring gently',
      '3. After like 5minutes when vegetables are turning soft, add tomato paste and keep on stirring.',
      '4. Add Dania and half glass of milk and combine well, making sure heat is not high',
      '5. Add half glass of water.. combine well and cook for approximately 13 minutes until gravy reduces and the sauce is thick',
      '6. '
    ]);

final fooditems = [bologneseSauce, spaghetiSauc];
