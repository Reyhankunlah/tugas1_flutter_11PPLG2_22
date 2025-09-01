import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tugas1_11pplg2/Controllers/calculator_controller.dart';
import 'package:tugas1_11pplg2/Controllers/nav/navigation_controller.dart';

import 'package:tugas1_11pplg2/Components/custom_input.dart';
import 'package:tugas1_11pplg2/Components/custom_button.dart';
import 'package:tugas1_11pplg2/Components/custom_text.dart';

class HomeFragment extends GetView<CalculatorController> {
  const HomeFragment({super.key});

  @override
  Widget build(BuildContext context) {
    final nav = Get.find<NavigationController>();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Input 1
          Container(
            margin: const EdgeInsets.only(bottom: 12),
            child: CustomInput(
              label: "Input Angka 1",
              controller: controller.txtAngka1,
              isPassword: false,
              inputType: TextInputType.number,
              isNumber: true,
            ),
          ),

          // Input 2
          Container(
            margin: const EdgeInsets.only(bottom: 16),
            child: CustomInput(
              label: "Input Angka 2",
              controller: controller.txtAngka2,
              isPassword: false,
              inputType: TextInputType.number,
              isNumber: true,
            ),
          ),

          // Tombol + dan -
          Container(
            margin: const EdgeInsets.only(bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  myText: "+",
                  myTextColor: Colors.blueAccent,
                  onPressed: controller.tambah,
                ),
                const SizedBox(width: 8),
                CustomButton(
                  myText: "-",
                  myTextColor: Colors.blueAccent,
                  onPressed: controller.kurang,
                ),
              ],
            ),
          ),

          // Tombol * dan /
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  myText: "*",
                  myTextColor: Colors.blueAccent,
                  onPressed: controller.kali,
                ),
                const SizedBox(width: 8),
                CustomButton(
                  myText: "/",
                  myTextColor: Colors.blueAccent,
                  onPressed: controller.bagi,
                ),
              ],
            ),
          ),

          // Hasil
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: Obx(
              () => CustomText(
                myText: "Hasil: ${controller.textHasil.value}",
                myTextColor: Colors.blueAccent,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                align: TextAlign.center,
              ),
            ),
          ),

          // Tombol Clear
          Container(
            margin: const EdgeInsets.only(bottom: 8),
            child: CustomButton(
              myText: "Clear",
              myTextColor: Colors.red,
              onPressed: controller.clear,
            ),
          ),

          // Tombol ke Football
          CustomButton(
            myText: "Football Page",
            myTextColor: Colors.red,
            onPressed: () => nav.changeIndex(2),
          ),
        ],
      ),
    );
  }
}
