import 'package:flutter/material.dart';

class MainValueSection extends StatelessWidget {
  final String value;
  final bool returnArrow;
  final Function returnFunction;

  const MainValueSection(
      {Key key, this.value, this.returnArrow = false, this.returnFunction})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(53, 101, 169, 1),
            Color.fromRGBO(140, 55, 172, 1),
          ],
        ),
      ),
      child: Stack(
        children: [
          returnArrow
              ? Positioned(
                  child: IconButton(
                      icon: Icon(Icons.arrow_back), onPressed: returnFunction))
              : Container(),
          Center(
            child: Text(
              value,
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.w200),
            ),
          ),
        ],
      ),
    );
  }
}
