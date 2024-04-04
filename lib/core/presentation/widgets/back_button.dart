import 'package:clockify/theme/app_colors.dart';
import 'package:flutter/material.dart';

class BackButton extends StatelessWidget {
  const BackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: Colors.white, // Set the color to white
      onPressed: () => Navigator.of(context).pop(),
      icon: const Icon(
        Icons.arrow_back,
        color: ClockifyColors.teritaryColor,
      ),
    );
  }
}
