import 'package:flutter/material.dart';

class CustomIndicatorWidget extends StatelessWidget {
  final bool? isSelected;
  const CustomIndicatorWidget({required this.isSelected, super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 450),
      height: 8,
      curve: Curves.easeIn,
      width: isSelected! ? 30 : 8,
      decoration: BoxDecoration(
          color: const Color(0xFF4CAF50),
          borderRadius: BorderRadius.circular(4)),
    );
  }
}
