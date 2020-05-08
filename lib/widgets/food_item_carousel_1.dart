import 'package:flutter/material.dart';
import 'package:kataleminimal/data/foods.dart';
import 'package:kataleminimal/pages/food_details_page.dart';

class FoodItemCarousel1 extends StatelessWidget {
  final FoodItem fooditem;

  const FoodItemCarousel1({Key key, this.fooditem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //Text labels section
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Popular recipes',
              style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.2),
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                'See All',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.5,
                    color: Colors.green),
              ),
            )
          ],
        ),

        //Image and content cards
        Container(
          //Entire row of the screen. this is where cards below will sit
          height: 300.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: fooditems.length,
            itemBuilder: (BuildContext context, int index) {
              FoodItem fooditem = fooditems[index];
              return Card(
                //Individual complete cards
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(24))),
                elevation: 2,
                child: GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => FoodDetailsPage(
                        fooditem: fooditem,
                      ),
                    ),
                  ),

                  //The container holding the card elements
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    width: 240.0,

                    //stack of image container and text container
                    child: Stack(
                      //Stack element where the photo and text box are placed
                      alignment: Alignment.topCenter,
                      children: <Widget>[
                        Positioned(
                          //The text box
                          bottom: 2.0,
                          child: Container(
                            //container for the text widgets
                            height: 120,
                            width: 240,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20.0, bottom: 5.0),
                                    child: Text(
                                      fooditem.foodName,
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    fooditem.price,
                                    style: TextStyle(),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Icon(Icons.timer),
                                          Text(fooditem.duration)
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Icon(Icons.people_outline),
                                          Text(fooditem.serves)
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        //Image Stack section. Image with icon
                        Stack(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image(
                                height: 180,
                                width: 240,
                                image: AssetImage(fooditem.imagePath),
                                fit: BoxFit.cover,
                              ),
                            ),

                            //iIcon section. Should replace this with a floating icon
                            Positioned(
                              right: 10,
                              bottom: 20,
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black26,
                                        offset: Offset(0.0, 2.0),
                                        blurRadius: 6,
                                      )
                                    ],
                                    border: Border.all(
                                        color: Colors.white,
                                        style: BorderStyle.solid,
                                        width: 1)),
                                child: InkWell(
                                  onTap: () {},
                                  child: Icon(
                                    Icons.favorite_border,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
