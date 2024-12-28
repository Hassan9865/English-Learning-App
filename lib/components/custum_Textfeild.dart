import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final IconData? icon;
  final TextEditingController controller;
  final bool isDropdown;
  final List<String>? dropdownItems;
  final Function(String?)? onChanged;

  CustomTextField({
    required this.label,
    this.icon,
    required this.controller,
    this.isDropdown = false,
    this.dropdownItems,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: isDropdown
          ? DropdownButtonFormField<String>(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[100],
                labelText: label,
                prefixIcon: Icon(icon),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              value: controller.text.isNotEmpty ? controller.text : null,
              items: dropdownItems?.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (value) {
                controller.text = value ?? '';
                if (onChanged != null) {
                  onChanged!(value);
                }
              },
            )
          : TextFormField(
              controller: controller,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[100],
                labelText: label,
                suffixIcon: Icon(icon),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
    );
  }
}
