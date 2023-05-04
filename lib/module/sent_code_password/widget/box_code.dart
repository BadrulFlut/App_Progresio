import 'package:app_progresio/core.dart';
import 'package:flutter/material.dart';

Container boxCode(TextEditingController controller, FocusNode focusNode,
    void Function(String)? onChanged) {
  return Container(
    width: 40,
    height: 40,
    child: TextField(
      controller: controller,
      focusNode: focusNode,
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(bottom: 2),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
      onChanged: onChanged,
    ),
  );
}
