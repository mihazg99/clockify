import 'package:clockify/core/constants/app_sizes.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const List<String> list = <String>[
  'One',
  'Two',
  'Three',
  'Four',
  'One',
  'Two',
  'Three',
  'Four'
];

class CustomDropdownMenu extends HookConsumerWidget {
  const CustomDropdownMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedValue = useState(list.first);

    return SizedBox(
      height: 55,
      child: DropdownSearch<String>(
        popupProps: PopupProps.menu(
          showSearchBox: true,
          showSelectedItems: true,
          disabledItemFn: (String s) => s.startsWith('I'),
        ),
        items: list,
        dropdownDecoratorProps: DropDownDecoratorProps(
          dropdownSearchDecoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: "Select a task",
            border: OutlineInputBorder(
              // Specify the outer border here
              borderRadius: BorderRadius.circular(AppSizes.buttonRadius),
              borderSide: const BorderSide(color: Colors.grey, width: 2.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSizes.buttonRadius),
              borderSide: const BorderSide(color: Colors.grey, width: 2.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSizes.buttonRadius),
              borderSide: const BorderSide(color: Colors.grey, width: 2.0),
            ),
          ),
        ),
        onChanged: (String? value) {
          selectedValue.value = value!;
        },
        selectedItem: selectedValue.value,
      ),
    );
  }
}
