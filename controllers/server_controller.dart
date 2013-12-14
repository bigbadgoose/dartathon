library server_controller;

// Standard Library Import
import 'package:angular/angular.dart';

// Custom Library Import
import 'invoice_controller.dart';

// In 'server mode', this class fetches items from the server.
class ServerController {
  Http _http;

  ServerController(Http this._http);

  init(InvoiceController todo) {
  }
}