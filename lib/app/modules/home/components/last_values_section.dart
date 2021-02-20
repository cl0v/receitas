import 'package:flutter/material.dart';
import 'package:receitas/app/data/model/launch_model.dart';
import 'package:receitas/app/widgets/section.dart';

class LastValuesSection extends StatelessWidget {
  final List<LaunchModel> launches;

  const LastValuesSection({Key key, this.launches}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Section(
      title: 'Sei la mermao',
      child: Container(),
    );
  }
}
