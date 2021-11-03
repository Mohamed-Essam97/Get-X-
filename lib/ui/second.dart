import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get_x_project/ui/second_view_model.dart';
import 'package:get/get.dart';
import 'package:get_x_project/widgets.dart/normal_button.dart';

/// get Builder --not reactive
/// Getx -- reactive -- stream like get Builder in implementaion
/// obx not have value

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SecondViewModel viewModel = Get.put(SecondViewModel());
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // GetX<SecondViewModel>(
        //     init: SecondViewModel(),
        //     builder: (model) => Column(
        //             crossAxisAlignment: CrossAxisAlignment.center,
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: [
        //               Center(child: Text(model.counter.toString())),
        //             ])),
        Obx(() => (Text(viewModel.counter.toString()))),
        NormalButton(
          text: "sad",
          onPressed: () {
            viewModel.increment();
          },
        )
      ],
    ));
  }
}
