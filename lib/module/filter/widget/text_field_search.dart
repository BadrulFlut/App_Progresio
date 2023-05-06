import 'package:flutter/material.dart';

Container searchFieldFilter(
    TextEditingController controller, void Function(String)? button) {
  return Container(
    padding: const EdgeInsets.symmetric(
      vertical: 11,
      horizontal: 12.0,
    ),
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(4.0),
      ),
    ),
    child: Row(
      children: [
        const Icon(
          Icons.search_rounded,
          size: 25,
          color: Color.fromARGB(104, 158, 158, 158),
        ),
        const SizedBox(
          width: 8.0,
        ),
        Expanded(
          child: TextFormField(
            controller: controller,
            decoration: const InputDecoration.collapsed(
                filled: true,
                fillColor: Colors.transparent,
                hoverColor: Colors.transparent,
                hintText: "Search",
                hintStyle:
                    TextStyle(color: Color.fromARGB(104, 158, 158, 158))),
            onFieldSubmitted: button,
          ),
        ),
      ],
    ),
  );
}
