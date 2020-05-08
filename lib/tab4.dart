import 'package:flutter/material.dart';

class Tab4 extends StatefulWidget {
  @override
  _Tab4State createState() => _Tab4State();
}

class _Tab4State extends State<Tab4> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: DefaultTabController(
          length: 3,
          child: (Column(
            children: <Widget>[
              Container(
                child: TabBar(
                  tabs: <Widget>[
                    Tab(
                      text: 'HOME',
                    ),
                    Tab(
                      text: 'HOME',
                    ),
                    Tab(
                      text: 'HOME',
                    )
                  ],
                ),
              ),
              Expanded(
                child: (Container(
                  child: TabBarView(
                    children: <Widget>[
                      Container(
                        child: Text('One hjsdjsdhsjh'),
                      ),
                      Container(
                        child: Text('One hjsdjsdhsjh'),
                      ),
                      Container(
                        child: Text('One hjsdjsdhsjh'),
                      )
                    ],
                  ),
                )),
              )
            ],
          )),
        ),
      ),
    );
  }
}
