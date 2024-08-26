import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  final bilangan = 0.obs;

  void tambahSatu() {
    if (bilangan.value >= 20) {
      Get.snackbar('Warning!', 'Hayoh weh di tambahan',
          snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.amber);
    } else {
      bilangan.value++;
    }
  }

  void kurangSatu() {
    if (bilangan.value <= 0) {
      Get.snackbar('Warning!', 'Terus weh di kurangan',
          snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.amber);
    } else {
      bilangan.value--;
    }
  }

  void resetData() {
    bilangan.value = 0;
    Get.snackbar('Success', 'Atos ah di hapus',
      snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.green);
  }
}
