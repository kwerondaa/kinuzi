import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.orange,
          ),
          Positioned(
            bottom: 22,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.arrow_forward_ios,
                        color: Colors.white.withOpacity(0.2)),
                    Icon(Icons.arrow_forward_ios,
                        color: Colors.white.withOpacity(0.4)),
                    Icon(Icons.arrow_forward_ios,
                        color: Colors.white.withOpacity(0.6)),
                    RotatedBox(
                        quarterTurns: 1,
                        child: Icon(Icons.local_airport, color: Colors.white)),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 65,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 310,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
              image: DecorationImage(
                image: AssetImage('images/grilled_chicken2.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 48.0, left: 15, right: 15),
            child: Container(
              width: MediaQuery.of(context).size.width - 15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
