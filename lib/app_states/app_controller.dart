import 'package:get/get.dart';

import 'app_states.dart';

class AppController extends GetxController {
  var state = AppStates();

  void increment() {
    state.counter.value++;
  }

  void decrement(){
    state.counter.value--;
  }
}
