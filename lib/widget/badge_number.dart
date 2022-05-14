import 'package:flutter/material.dart';

class BadgeNumber extends StatelessWidget {
  final int? count;

  const BadgeNumber({
    Key? key, 
    this.count
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle styleCounter = const TextStyle(fontSize: 15, color: Colors.white);

    if (count != null && count! > 0) {
      return Positioned(
        right: 11,
        top: 1,
        child: Container(
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: Colors.redAccent,
            borderRadius: BorderRadius.circular(10),
          ),
          constraints: const BoxConstraints(minHeight: 20, minWidth: 20),
          child: Text(
            count.toString(),
            style: styleCounter,
            textAlign: TextAlign.center,
          ),
        ),
      );
    }

    return Container();
  }
}
