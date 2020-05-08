import 'package:flat_segmented_control/flat_segmented_control.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kataleminimal/data/foods.dart';
import 'package:kataleminimal/data/ingredients.dart';
import 'package:kataleminimal/data/processes.dart';

import 'order_summary.dart';

//class FoodDetailsPage extends StatelessWidget {
//  final FoodItem fooditem;
//  const FoodDetailsPage({Key key, this.fooditem}) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        body: Page3(),
//      ),
//    );
//  }
//}

class FoodDetailsPage extends StatefulWidget {
  final FoodItem fooditem;

  const FoodDetailsPage({Key key, this.fooditem}) : super(key: key);

  @override
  _FoodDetailsPageState createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Hero(
                  tag: 'final2',
                  child: Container(
                    height: MediaQuery.of(context).size.height - 400,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              'images/grilled_chicken2.jpg',
                            ),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 30.0, horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.6),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              border: Border.all(
                                  width: 0.6,
                                  style: BorderStyle.solid,
                                  color: Colors.white)),
                          child: Center(
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.grey.shade800,
                              size: 24.0,
                            ),
                          ),
                        ),
                      ),

                      //ToDo Implement functionality for this menu
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.6),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              border: Border.all(
                                  width: 0.6,
                                  style: BorderStyle.solid,
                                  color: Colors.white)),
                          child: Center(
                            child: Icon(
                              Icons.menu,
                              color: Colors.grey.shade700,
                              size: 24.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              transform: Matrix4.translationValues(0.0, -40.0, 0.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: Colors.white),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'PUMPKIN SOUP',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30.0, vertical: 20),
                          child: Text(
                            'Description of the etsdksksd skdfsdnkfs sfksdfnk sfskdfj',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 70.0, vertical: 2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(
                                '40 MIN',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey.shade900),
                              ),
                              Container(
                                height: 25,
                                width: 1,
                                color: Colors.grey,
                              ),
                              Text(
                                'EASY',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey.shade900),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey.shade100,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 20),
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        InkWell(
                                          onTap: () {},
                                          child: Container(
                                            alignment: Alignment.center,
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              border: Border.all(
                                                  color: Colors.grey,
                                                  style: BorderStyle.solid,
                                                  width: 0.7),
                                            ),
                                            child: Text(
                                              '-',
                                              style: TextStyle(
                                                fontSize: 30,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          '04',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border.all(
                                                color: Colors.green,
                                                style: BorderStyle.solid,
                                                width: 2),
                                          ),
                                          child: Text(
                                            '+',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.green,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    'Ush.15000',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  //Ingredients, tools, processes

                  Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: FlatSegmentedControl(
                      tabPadding:
                          EdgeInsets.only(left: 6, right: 6, bottom: 10),
                      labelColor: Colors.green,
                      indicatorColor: Colors.white,
                      tabChildren: <Widget>[
                        Text(
                          'Ingredients',
                          style: TextStyle(fontSize: 16.0),
                        ),
                        Text('Tools', style: TextStyle(fontSize: 16.0)),
                        Text('Process', style: TextStyle(fontSize: 16.0)),
                      ],
                      childrenHeight: 300,
                      children: <Widget>[
                        Ingredients(),
                        Ingredients(),
                        Processes()
                      ],
                    ),
                  ),

                  //CheckOut section
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20, top: 60, bottom: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                            alignment: Alignment.center,
                            height: 54,
                            width: 54,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Colors.green,
                                  style: BorderStyle.solid,
                                  width: 1),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.favorite_border),
                              color: Colors.green,
                              iconSize: 30,
                            )),
                        SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: FlatButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                padding: EdgeInsets.all(20),
                                color: Colors.green,
                                onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => OrderSummary())),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.shopping_basket,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text('Check Out',
                                        style: TextStyle(color: Colors.white)),
                                  ],
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
