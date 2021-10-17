import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final Function()? onPressed;
  const CircleButton({Key? key, required this.icon, required this.iconSize, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6.0),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFEEEEEE),
      ),
      child:  IconButton(
        onPressed:onPressed,
        icon: Icon(icon),
        iconSize: iconSize,
        color: Colors.black,
      ),
    );
  }
}
