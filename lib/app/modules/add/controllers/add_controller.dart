import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:get/get.dart';
import 'package:receitas/app/data/model/category_model.dart';
import 'package:receitas/app/data/model/launch_model.dart';
import 'package:receitas/app/data/repository/launch_repository.dart';

class AddController extends GetxController {
  final LaunchRepository repository;

  AddController({this.repository});

  var mainValue;

  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  var valueController = MoneyMaskedTextController(leftSymbol: 'R\$ ');

  @override
  void onInit() {
    super.onInit();
    mainValue = Get.arguments['mainValue'];
  }

  onConfirmPressed() {
    LaunchModel(
      date: DateTime.now().millisecondsSinceEpoch,
      title: titleController.text,
      description: descriptionController.text,
    );
  }

  onBackPressed() {
    Get.back();
  }
}
