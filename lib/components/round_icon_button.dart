import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  const RoundIconButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 1, color: Colors.white)),
        child: Icon(icon, size: 17, color: Colors.white),
      ),
    );
  }
}
