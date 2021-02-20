import 'package:flutter/material.dart';
import 'package:receitas/app/data/model/category_model.dart';
import 'package:receitas/app/widgets/section.dart';

class CircularChartSection extends StatelessWidget {
  final List<CategoryModel> chartValues;

  const CircularChartSection({Key key, this.chartValues}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Section(
      title: 'Dados',
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.circle,
                color: Colors.red,
              ),
              SizedBox(
                width: 30,
              ),
              Text('Online'),
              Spacer(),
              Text('R\$30,00'),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.circle,
                color: Colors.green,
              ),
              SizedBox(
                width: 30,
              ),
              Text('Ativo'),
              Spacer(),
              Text('R\$3,00'),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.circle,
                color: Colors.blue,
              ),
              SizedBox(
                width: 30,
              ),
              Text('Passivo'),
              Spacer(),
              Text('R\$130,00'),
            ],
          ),
          SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
