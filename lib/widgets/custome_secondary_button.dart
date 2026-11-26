import 'package:flutter/material.dart';

class CustomeSecondaryButton extends StatelessWidget {
  final double width;
  final double height;
  final VoidCallback onTap;
  final IconData iconData;
  const CustomeSecondaryButton({
    super.key,
    required this.width,
    required this.height,
    required this.onTap,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.only(right: 8.0, top: 8.0),
          child: Icon(iconData, color: Theme.of(context).colorScheme.primary),
        ),
      ),
    );
  }
}
