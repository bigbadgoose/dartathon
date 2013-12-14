library no_server_controller;

// Standard Library Import
import 'package:angular/angular.dart';

// Custom Library Import
import 'server_controller.dart';
import 'invoice_controller.dart';

// An implementation of ServerController that does nothing.
// Logic in main.dart determines which implementation we should
// use.
class NoServerController implements ServerController {
  Http _http;
  init(InvoiceController todo) { }
}