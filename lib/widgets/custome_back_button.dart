import 'dart:io';

import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/custome_secondary_button.dart';

class CustomeBackButton extends StatelessWidget {
  final double width;
  final double height;
  const CustomeBackButton({super.key, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return CustomeSecondaryButton(
      width: width,
      height: height,
      onTap: () => Navigator.of(context).pop(),
      iconData: Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back,
    );
  }
}
