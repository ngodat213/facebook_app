import 'package:flutter/material.dart';

class CircleBtn extends StatelessWidget {
  const CircleBtn({
    Key? key,
    required this.icon,
    required this.size,
    required this.onPressed,
  }) : super(key: key);
  final IconData icon;
  final double size;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6.0),
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: Colors.grey[200]),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon),
        iconSize: size,
        color: Colors.black,
      ),
    );
  }
}
