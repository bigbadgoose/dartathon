library invoice_controller;

import 'package:angular/angular.dart';

import '../models/client.dart';
import 'server_controller.dart';

@NgDirective(
  selector: '[invoice-controller]',
  publishAs: 'invoice'
)
class InvoiceController {
  List<Client> clients;

  InvoiceController(ServerController serverController) {
    Client newClient = new Client();
    this.clients = [];
    serverController.init(this);
  }
}