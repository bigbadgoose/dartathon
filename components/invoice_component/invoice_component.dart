library invoice_component;

import 'package:angular/angular.dart';

@NgComponent(
    selector: 'invoice',
    templateUrl: 'components/invoice_component/invoice_component.html',
    cssUrl: 'components/invoice_component/invoice_component.css',
    publishAs: 'ctrl',
    map: const {
      'client-id' : '@client'
    }
)
class InvoiceComponent {
  
  int clientId;
  
  set client(String clientId) {
    this.clientId = int.parse(clientId);
  }
  
}