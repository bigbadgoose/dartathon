library invoice;

import 'line_item.dart';

class Invoice {
  int id;
  List<LineItem> lineItems = [];
  
  Invoice(this.id) {
    this.lineItems.add(new LineItem());
    this.lineItems.add(new LineItem());
  }
}