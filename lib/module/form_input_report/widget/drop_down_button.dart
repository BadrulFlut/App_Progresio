import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DropdownButtonInput extends StatefulWidget {
  final String hintText;
  final List<String> optionsList;
  final Function(String) onChanged;
  DropdownButtonInput(
      {super.key,
      required this.hintText,
      required this.optionsList,
      required this.onChanged});

  @override
  State<DropdownButtonInput> createState() => _DropdownButtonInputState();
}

class _DropdownButtonInputState extends State<DropdownButtonInput> {
  String? _selectedOption;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 225,
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          hint: Text(
            widget.hintText,
            style: GoogleFonts.openSans(
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
                color: Colors.black),
          ),
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
