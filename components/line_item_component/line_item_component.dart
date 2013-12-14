library line_item_component;

import 'package:angular/angular.dart';

import '../../models/line_item.dart';

@NgComponent(
    selector: 'line-item',
    templateUrl: 'components/line_item_component/line_item_component.html',
    cssUrl: 'components/line_item_component/line_item_component.css',
    publishAs: 'ctrl',
    map: const {
      'line-item' : '=>lineItem'  
    }
)
class LineItemComponent {
  LineItem lineItem;
  bool isChargesShown = false;
  
  toggleCharges() {
    this.isChargesShown = !this.isChargesShown;
  }
}