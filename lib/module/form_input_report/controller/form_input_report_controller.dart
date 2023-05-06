import 'package:flutter/material.dart';
import 'package:app_progresio/state_util.dart';
import '../view/form_input_report_view.dart';

class FormInputReportController extends State<FormInputReportView>
    implements MvcController {
  static late FormInputReportController instance;
  late FormInputReportView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  String dropdownValue = "";

  void dropDownOnChanged(newValue) {
    setState(() {
      dropdownValue = newValue!;
    });
  }
}
