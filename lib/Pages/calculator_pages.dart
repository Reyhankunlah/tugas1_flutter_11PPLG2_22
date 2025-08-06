import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:tugas1_11pplg2/Components/custom_button.dart';
import 'package:tugas1_11pplg2/Components/custom_input.dart';
import 'package:tugas1_11pplg2/Components/custom_text.dart';
import 'package:tugas1_11pplg2/Controllers/calculator_controller.dart';

class CalculatorPages extends StatelessWidget {
  CalculatorPages({super.key});
  final CalculatorController calcController = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kalkulator")),
      body: Column(
        children: [
          CustomInput(
            label: "Input Angka 1",
            controller: calcController.txtAngka1,
            isPassword: false,
            inputType: TextInputType.number,
            isNumber: true,
          ),
          CustomInput(
            label: "Input Angka 2",
            controller: calcController.txtAngka2,
            isPassword: false,
            inputType: TextInputType.number,
            isNumber: true,
          ),
          Row(
            children: [
              CustomButton(
                myText: "+",
                myTextColor: Colors.blueAccent,
                onPressed: () {
                  calcController.tambah();
                },
              ),
              CustomButton(
                myText: "-",
                myTextColor: Colors.blueAccent,
                onPressed: () {
                  calcController.kurang();
                },
              ),
            ],
          ),
          Row(
            children: [
              CustomButton(
                myText: "*",
                myTextColor: Colors.blueAccent,
                onPressed: () {
                  calcController.kali();
                },
              ),
              CustomButton(
                myText: "/",
                myTextColor: Colors.blueAccent,
                onPressed: () {
                  calcController.bagi();
                },
              ),
            ],
          ),
          Obx(() {
            return CustomText(
              myText: "Hasil: " + calcController.textHasil.value,
              myTextColor: Colors.blueAccent,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              align: TextAlign.center,
            );
          }),

          CustomButton(
            myText: "Clear",
            myTextColor: Colors.red,
            onPressed: () {
              calcController.clear();
            },
          ),
        ],
      ),
    );
  }
}
