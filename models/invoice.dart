library invoice;

import 'line_item.dart';
import 'charge.dart';

class Invoice {
  int id;
  List<LineItem> lineItems = [];
  
  Invoice(this.id) {
    this.lineItems.add(new LineItem('First', 'Desc', [new Charge(), new Charge()], new DateTime.now()));
    this.lineItems.add(new LineItem('Second', 'Desc', [new Charge()], new DateTime.now()));
  }
}