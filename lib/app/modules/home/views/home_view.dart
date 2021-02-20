import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:receitas/app/modules/home/components/circular_chart_section.dart';
import 'package:receitas/app/modules/home/components/last_values_section.dart';
import 'package:receitas/app/modules/home/controllers/home_controller.dart';
import 'package:receitas/app/widgets/bottom_nav_bar.dart';
import 'package:receitas/app/widgets/main_value_section.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(47, 62, 78, 1),
      bottomNavigationBar: BottomNavBar(
        index: 0,
        onHistoryPressed: controller.onHistoryPressed,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: controller.onAddPressed,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: ListView(
          children: [
            MainValueSection(
              value: controller.mainValue,
            ),
            CircularChartSection(
              chartValues: [
                controller.cat1,
                controller.cat2,
                controller.cat3,
              ],
            ),
            LastValuesSection(
              launches: controller.launches,
            ),
          ],
        ),
      ),
    );
  }
}
