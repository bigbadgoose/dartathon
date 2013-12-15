library invoice_component;

import '../../models/invoice.dart';
import '../../models/line_item.dart';
import '../../models/charge.dart';

import 'package:angular/angular.dart';

@NgComponent(
    selector: 'invoice',
    templateUrl: 'components/invoice_component/invoice_component.html',
    cssUrl: 'components/invoice_component/invoice_component.css',
    publishAs: 'ctrl',
    map: const {
      'invoice' : '=>invoice'  
    }
)
class InvoiceComponent {
  String clientId;
  Invoice invoice;
  String title = 'A Line Item';
  String amount = '0';
  bool isFormShown = false;

  newLineItem() {
    this.isFormShown = !this.isFormShown;
  }
  
  createLineItem() {
    if (this.title.isNotEmpty && this.amount.isNotEmpty) {
      LineItem lineItem = new LineItem(
          this.title,
          'desc',
          [new Charge(this.title, double.parse(this.amount), 'dollar')],
          new DateTime.now()
      );
      this.invoice.lineItems.add(lineItem);
      this.title = 'A Line Item';
      this.amount = '0';
      this.isFormShown = false;
    }
  }
}