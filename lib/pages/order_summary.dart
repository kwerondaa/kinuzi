import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderSummary extends StatefulWidget {
  @override
  _OrderSummaryState createState() => _OrderSummaryState();
}

class _OrderSummaryState extends State<OrderSummary> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          actions: <Widget>[
            Icon(
              Icons.shopping_cart,
              color: Colors.black,
            )
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.only(left: 12.0, top: 30.0, bottom: 30.0),
                child: Text(
                  'Summary',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.green,
                  ),
                ),
              ),

              //Address Container
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 30,
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(6))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 24.0, horizontal: 20.0),

                    //Row for icons and text
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.motorcycle),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Delivery Address',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    color: Colors.green),
                              ),
                              SizedBox(
                                height: 10,
                              ),

                              //ToDo Make this text continuous as addrees may be longer than the space available
                              Text(
                                'Plot 31, Bugolobi Flats, Bugolobi, Kampala',
                              )
                            ],
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),

              //Payment Method Container
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 30,
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(6))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 24.0, horizontal: 20.0),

                    //Row for icons and text
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.motorcycle),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Payment Method ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    color: Colors.green),
                              ),
                              SizedBox(
                                height: 10,
                              ),

                              //ToDo Make this text continuous as addrees may be longer than the space available
                              Text(
                                'MTN Mobile Money ',
                              )
                            ],
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),

              //Order Summary Container
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 30,
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(6))),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 24.0,
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, bottom: 20.0, right: 20, left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Order Details',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                      color: Colors.green),
                                ),
                                Text(
                                  'CLEAR CART',
                                  style: TextStyle(
                                      color: Colors.grey, letterSpacing: 1.2),
                                )
                              ],
                            ),
                          ),
                          Divider(
                            height: 2,
                            thickness: 2,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 10),
                            child: Row(
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image(
                                    height: 70,
                                    width: 70,
                                    image: AssetImage(
                                        'images/grilled_chicken2.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text('Grilled Chicken',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18,
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 8.0, top: 4),
                                        child: Text('Description of the item.'),
                                      ),
                                      Text('Ush.38000',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16,
                                              color: Colors.green))
                                    ],
                                  ),
                                ),

                                //add or sub order
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.remove,
                                      color: Colors.grey,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Container(
                                        width: 30,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10),
                                            ),
                                            color: Colors.green),
                                        child: Center(
                                          child: Text(
                                            '1',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Icon(
                                      Icons.add,
                                      color: Colors.green,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1,
                            indent: 20,
                            endIndent: 20,
                          ),

                          //prices and items
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 20),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      'Subtotal:',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Ush.30000',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 15.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        'Tax:',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        'Ush.1000',
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      'Shipping:',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Ush.2000',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0, 2.0),
                        blurRadius: 30,
                      )
                    ]),

                //Payment container. Amount and payment method
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, bottom: 20.0, left: 10.0, right: 10.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Ush.34000',
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.payment,
                                color: Colors.white,
                                size: 28,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Pay',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
