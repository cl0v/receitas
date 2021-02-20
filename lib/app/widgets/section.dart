import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  final double height;
  final Widget child;
  final String title;

  const Section({
    Key key,
    this.height,
    this.child,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 265,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title ?? '',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),

          //Chart(),
          child
        ],
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 19,
        vertical: 12,
      ),
      margin: EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: Color.fromRGBO(56, 73, 92, 1),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
