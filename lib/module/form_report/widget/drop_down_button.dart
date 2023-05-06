import 'package:flutter/material.dart';

class CustomDropdownButton extends StatefulWidget {
  final String hintText;
  final List<String> optionsList;
  final Function(String) onChanged;

  CustomDropdownButton(
      {required this.hintText,
      required this.optionsList,
      required this.onChanged});

  @override
  _CustomDropdownButtonState createState() => _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<CustomDropdownButton> {
  String? _selectedOption;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
              width: 1, color: const Color.fromARGB(103, 158, 158, 158))),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          hint: Text(widget.hintText),
          value: _selectedOption,
          isExpanded: true,
          onChanged: (newValue) {
            setState(() {
              _selectedOption = newValue.toString();
              widget.onChanged(_selectedOption!);
            });
            // print(_selectedOption);
            // controller.variable = _selectedOption
            //if(controller.variable == value) {
            //    Navigator.push(context, MaterialPageRoute(builder: (_) => const FormInputReportView(value)));
            //} else {
            //    Navigator.push(context, MaterialPageRoute(builder: (_) => const FormInputReportView(value)));
            //}
          },
          items: widget.optionsList.map((option) {
            return DropdownMenuItem(
              value: option,
              child: Text(option),
            );
          }).toList(),
        ),
      ),
    );
  }
}
