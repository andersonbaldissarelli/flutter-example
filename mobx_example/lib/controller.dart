import 'package:mobx/mobx.dart';
//to generate the set / get code automatically you need to add a part
part 'controller.g.dart';

//Controller will be generated based on the ControllerBase
class Controller = ControllerBase with _$Controller;

//Store informs that the Controller is able to receive data or a code generated based on it
//Everything generated will be based on this class
abstract class ControllerBase with Store {
  @observable
  int counter = 0;

  @action
  increment() {
    counter++;
  }
}
