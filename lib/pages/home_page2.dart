import 'package:flutter/material.dart';
import 'package:kataleminimal/app_state.dart';
import 'package:kataleminimal/data/category.dart';
import 'package:kataleminimal/data/foods.dart';
import 'package:kataleminimal/widgets/food_item_carousel_1.dart';
import 'package:kataleminimal/widgets/food_item_carousel_2.dart';
import 'package:kataleminimal/widgets/food_item_carousel_2.dart';
import 'package:kataleminimal/widgets/food_item_carousel_2.dart';
import 'package:kataleminimal/widgets/food_item_carousel_2.dart';
import 'package:kataleminimal/widgets/food_item_carousel_2.dart';
import 'package:kataleminimal/widgets/home_category_widget.dart';
import 'package:provider/provider.dart';

import 'food_details_page.dart';

class HomePage2 extends StatelessWidget {
  final FoodItem fooditem;
  const HomePage2({Key key, this.fooditem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey _scaffoldKey = new GlobalKey();
    return ChangeNotifierProvider<AppState>(
      create: (_) => AppState(),
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            'Fresh Katale',
            style: TextStyle(color: Colors.green),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Icon(
                Icons.shopping_basket,
                color: Colors.grey.shade800,
              ),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                arrowColor: Colors.black,
                accountName: Text('Kweronda Ambroze'),
                accountEmail: Text('kwerondaa@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/user.jpg'),
                ),
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Home'),
                  leading: Icon(
                    Icons.home,
                    color: Colors.green,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('My Profile'),
                  leading: Icon(
                    Icons.person,
                    color: Colors.green,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('My Orders'),
                  leading: Icon(
                    Icons.shopping_basket,
                    color: Colors.green,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Categories'),
                  leading: Icon(
                    Icons.dashboard,
                    color: Colors.green,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Favourites'),
                  leading: Icon(
                    Icons.favorite,
                    color: Colors.green,
                  ),
                ),
              ),
              Divider(
                height: 1,
                thickness: 1,
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Settings'),
                  leading: Icon(
                    Icons.settings,
                    color: Colors.green,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Help'),
                  leading: Icon(
                    Icons.help,
                    color: Colors.green,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: <Widget>[
                  //Upper Text section
                  Padding(
                    padding: const EdgeInsets.only(right: 40, top: 40),
                    child: Text(
                      'What would you like to cook today?',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),

                  //Search Bar
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 30.0,
                    ),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search,
                                size: 16.0,
                                color: Color(0xff999798),
                              ),
                              hintText: 'Find your recipe',
                              hintStyle: TextStyle(
                                  fontSize: 14.0, color: Color(0xff999798))),
                        ),
                      ),
                    ),
                  ),

                  //First carousel of image cards and their details
                  FoodItemCarousel1(),
                  SizedBox(
                    height: 60,
                  ),

                  //Categories toggle containers.(icons and text labels)
                  Consumer<AppState>(
                    builder: (context, appState, _) => SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          for (final category in categories)
                            HomeCategoryWidget(
                              category: category,
                            )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  //Categories item cards for images and details
                  Consumer<AppState>(
                    builder: (context, appState, _) => SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          for (final fooditem in fooditems.where((e) => e
                              .categoryIds
                              .contains(appState.selectedCategoryId)))
                            GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          FoodDetailsPage(fooditem: fooditem)));
                                },
                                child: FoodItemCarousel2())
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
