import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:receitas/app/data/model/category_model.dart';
import 'package:receitas/app/data/model/launch_model.dart';
import 'package:receitas/app/data/repository/launch_repository.dart';
import 'package:receitas/app/routes/app_pages.dart';

class HomeController extends GetxController {
  final LaunchRepository repository;
  HomeController({this.repository});

  var cat1;
  var cat2;
  var cat3;

  var launches;

  var mainValue;


  @override
  void onInit() {
    super.onInit();
    mainValue = 'R\$ 30,00';
    cat1 = CategoryModel(
      color: Colors.red,
      title: 'Online',
      totalValue: 10,
    );
    cat2 = CategoryModel(
      color: Colors.green,
      title: 'Ativos',
      totalValue: 30,
    );
    cat3 = CategoryModel(
      color: Colors.blue,
      title: 'Passivos',
      totalValue: 100,
    );
    launches = [
      LaunchModel(
        title: 'Aplicativo',
        description: 'CashIn',
        value: 300,
        category: cat3,
      ),
      LaunchModel(
        title: 'Youtube',
        description: 'Papel e Caneta',
        value: 100,
        category: cat3,
      ),
      LaunchModel(
        title: 'JiuJitsu',
        description: 'Campeonato',
        value: 10000,
        category: cat2,
      ),
    ];
  }

  onAddPressed() {
    Get.toNamed(Routes.ADD, arguments: {'mainValue': mainValue});
  }

  onHistoryPressed() {}

  @override
  void onClose() {}
}
