import 'package:app_progresio/core.dart';
import 'package:flutter/material.dart';

Row checkBoxFilter(
    VoidCallback button, FilterController controller, Widget widget) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      InkWell(
        onTap: button,
        child: Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
              color: controller.isChecked ? Colors.blue : Colors.white,
              border: Border.all(
                  width: 2,
                  color: controller.isChecked ? Colors.blue : Colors.grey),
              borderRadius: BorderRadius.circular(5)),
          child: Icon(
            Icons.done,
            size: 10.0,
            color: controller.isChecked ? Colors.white : Colors.grey,
          ),
        ),
      ),
      const SizedBox(
        width: 10.0,
      ),
      widget
    ],
  );
}
