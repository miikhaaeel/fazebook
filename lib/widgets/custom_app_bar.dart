import 'package:fazebook/models/models.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final User currentUser;
  final List<IconData> icon;
  final int selectedIndex;
  final Function(int) onTap;
  const CustomAppBar({
    Key? key,
    required this.currentUser,
    required this.icon,
    required this.selectedIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
