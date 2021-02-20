import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:receitas/app/modules/add/controllers/add_controller.dart';
import 'package:receitas/app/widgets/bottom_nav_bar.dart';
import 'package:receitas/app/widgets/main_value_section.dart';

class AddView extends GetView<AddController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(47, 62, 78, 1),
      bottomNavigationBar: BottomNavBar(
        index: 0,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.check),
        onPressed: controller.onConfirmPressed,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: ListView(
          children: [
            MainValueSection(
              value: controller.mainValue,
              returnArrow: true,
              returnFunction: controller.onBackPressed,
            ),
          ],
        ),
      ),
    );
  }
}
