library line_item;

import 'package:intl/intl.dart';
import 'charge.dart';

class LineItem {
  String title = 'A Hardcoded Title';
  String desc = 'A Hardcoded Desc';
  DateTime date = new DateTime.now();
  List<Charge> charges = [];
  
  LineItem(this.title, this.desc, this.charges, this.date);
  
  String displayDate() {
    return new DateFormat('yyyy/MM/dd').format(this.date);
  }
  
  double subtotal() {
    double sum = 0.0;
    
    for (var charge in this.charges) {
      if (charge.costType == 'percent') {
        sum = sum + (sum * (charge.costValue / 100.0)); 
      } else {
        sum = sum + charge.costValue;  
      }
    }
    
    return sum;
  }
}