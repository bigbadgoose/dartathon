library invoice_controller;

import 'package:angular/angular.dart';

import '../models/invoice.dart';
import 'server_controller.dart';

@NgDirective(
  selector: '[invoice-controller]',
  publishAs: 'ctrl'
)
class InvoiceController {
  List<Invoice> invoices = [];

  InvoiceController(ServerController serverController) {
    Invoice invoice1 = new Invoice(1);
    this.invoices.addAll([invoice1]);
    serverController.init(this);
  }
}