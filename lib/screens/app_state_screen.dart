import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../app_states/app_controller.dart';

class AppStateScreen extends GetView<AppController> {
  const AppStateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(() => Text("${controller.state.counter.value}")),
      ),
      floatingActionButton:
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        FloatingActionButton(
            onPressed: () {
              controller.decrement();
            },
            child: const Icon(Icons.remove)),
        FloatingActionButton(
            onPressed: () {
              controller.increment();
            },
            child: const Icon(Icons.add))
      ]),
    );
  }
}
