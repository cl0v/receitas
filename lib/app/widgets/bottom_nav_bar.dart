import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final Function onHomePressed;
  final Function onHistoryPressed;
  final int index;

  const BottomNavBar({Key key, this.onHistoryPressed, this.onHomePressed, this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: onHomePressed,
            disabledColor:  Color.fromRGBO(56, 100, 169, 1),
          ),
          Spacer(),
          // IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(
            icon: Icon(Icons.history),
            disabledColor:  Color.fromRGBO(56, 100, 169, 1),
            onPressed: onHistoryPressed,
          ),
        ],
      ),
    );
  }
}
