import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget Ingredients() {
  return SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 20, right: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              color: Colors.grey, style: BorderStyle.solid, width: 0.3),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'images/grilled_chicken2.jpg',
                      height: 60,
                      width: 60,
                    ),
                  ),
                  title: Text(
                    'This is the title',
                    style: TextStyle(fontSize: 18),
                  ),
                  trailing: Text(
                    '1.5 kg',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Divider(
                thickness: 0.3,
                color: Colors.grey,
                indent: 20,
                endIndent: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'images/grilled_chicken2.jpg',
                      height: 60,
                      width: 60,
                    ),
                  ),
                  title: Text(
                    'This is the title',
                    style: TextStyle(fontSize: 18),
                  ),
                  trailing: Text(
                    '1.5 kg',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Divider(
                thickness: 0.3,
                color: Colors.grey,
                indent: 20,
                endIndent: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'images/grilled_chicken2.jpg',
                      height: 60,
                      width: 60,
                    ),
                  ),
                  title: Text(
                    'This is the title',
                    style: TextStyle(fontSize: 18),
                  ),
                  trailing: Text(
                    '1.5 kg',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Divider(
                thickness: 0.3,
                color: Colors.grey,
                indent: 20,
                endIndent: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'images/grilled_chicken2.jpg',
                      height: 60,
                      width: 60,
                    ),
                  ),
                  title: Text(
                    'This is the title',
                    style: TextStyle(fontSize: 18),
                  ),
                  trailing: Text(
                    '1.5 kg',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Divider(
                thickness: 0.3,
                color: Colors.grey,
                indent: 20,
                endIndent: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'images/grilled_chicken2.jpg',
                      height: 60,
                      width: 60,
                    ),
                  ),
                  title: Text(
                    'This is the title',
                    style: TextStyle(fontSize: 18),
                  ),
                  trailing: Text(
                    '1.5 kg',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Divider(
                thickness: 0.3,
                color: Colors.grey,
                indent: 20,
                endIndent: 20,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
