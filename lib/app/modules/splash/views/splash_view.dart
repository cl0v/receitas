import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:receitas/app/routes/app_pages.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () => Get.toNamed(Routes.HOME));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(47, 62, 78, 1),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 200, bottom: 10),
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/money-bag.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Text(
            'CashIn',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              decoration: TextDecoration.none,
            ),
          ),
        ],
      ),
    );
  }
}
