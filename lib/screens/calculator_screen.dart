import 'package:calculadora_getx/controllers/calculator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:calculadora_getx/widgets/calc_buttons.dart';
import 'package:calculadora_getx/widgets/math_results.dart';

class CalculatorScreen extends StatelessWidget {
  final calculatorCtrl = Get.put(CalculatorController());

  CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // print( 'Hola mundo' );
    // print( Get.width );
    //print(context.width);

    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: GetPlatform.isWeb ? 320 : 600),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                child: Container(),
              ),
              MathResults(),
              CalculatorButtons(),
              if (GetPlatform.isWeb) const SizedBox(height: 100)
            ],
          ),
        ),
      ),
    ));
  }
}
