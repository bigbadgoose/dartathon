library invoice_component;

import '../../models/invoice.dart';
import '../../models/line_item.dart';

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
  bool isFormShown = false;
  
  newLineItem() {
    this.isFormShown = !this.isFormShown;
  }
}