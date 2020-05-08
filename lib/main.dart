import 'package:flutter/material.dart';

import 'package:kataleminimal/pages/home_page2.dart';

void main() => runApp(Katale());

class Katale extends StatefulWidget {
  @override
  _KataleState createState() => _KataleState();
}

class _KataleState extends State<Katale> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage2(),
    );
  }
}
