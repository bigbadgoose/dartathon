library line_item;

import 'charge.dart';

class LineItem {
  String title = 'A Hardcoded Title';
  String desc = 'A Hardcoded Desc';
  double subtotal = 100.0;
  DateTime date = new DateTime.now();
  List<Charge> charges = [];
  
  LineItem() {
    this.charges.add(new Charge());
  }
}