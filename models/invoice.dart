library invoice;

import 'line_item.dart';
import 'charge.dart';

class Invoice {
  int id;
  List<LineItem> lineItems = [];
  
  Invoice(this.id) {
    this.lineItems.add(new LineItem('Guidevine', 'Desc', [new Charge('Heroku', 84.0, 'dollar'), new Charge('Sales Tax', 10.0, 'percent')], new DateTime.now()));
    this.lineItems.add(new LineItem('Topdown', 'Desc', [new Charge('Feature 1', 2000.0, 'dollar')], new DateTime.now()));
  }
}