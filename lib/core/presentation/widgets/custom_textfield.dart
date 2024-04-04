import 'package:clockify/core/constants/app_sizes.dart';
import 'package:clockify/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomTextfield extends HookConsumerWidget {
  final String label;
  final TextEditingController controller;
  final bool isHhMmFormat;

  const CustomTextfield._({
    required this.label,
    required this.controller,
    required this.isHhMmFormat,
    super.key,
  });

  factory CustomTextfield.primary({
    required String label,
    required TextEditingController controller,
    bool isHhMmFormat = false,
  }) =>
      CustomTextfield._(
        label: label,
        controller: controller,
        isHhMmFormat: isHhMmFormat,
      );

  factory CustomTextfield.timeInput({
    required String label,
    required TextEditingController controller,
    bool isHhMmFormat = true,
  }) =>
      CustomTextfield._(
        label: label,
        controller: controller,
        isHhMmFormat: isHhMmFormat,
      );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Flexible(
      child: SizedBox(
        height: 45,
        child: TextField(
          style: const TextStyle(color: ClockifyColors.teritaryColor),
          controller: controller,
          keyboardType: isHhMmFormat
              ? const TextInputType.numberWithOptions(
                  decimal: false,
                  signed: false,
                )
              : null,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSizes.buttonRadius),
              borderSide:
                  const BorderSide(color: ClockifyColors.secondaryColor),
            ),
            labelText: label,
            labelStyle: const TextStyle(color: ClockifyColors.teritaryColor),
          ),
          onChanged: isHhMmFormat
              ? (value) {
                  if (!_isValidInput(value)) {
                    controller.text = _formatTime(value);
                    controller.selection = TextSelection.fromPosition(
                      TextPosition(offset: controller.text.length),
                    );
                  }
                }
              : null,
        ),
      ),
    );
  }

  bool _isValidInput(String input) {
    return input.isEmpty ||
        RegExp(r'^[0-2]?[0-9]?[0-5]?[0-9]?$').hasMatch(input);
  }

  String _formatTime(String input) {
    if (input.length > 2) {
      return '${input.substring(0, 2)}:${input.substring(2).replaceAll(':', '')}';
    }
    return input;
  }
}
