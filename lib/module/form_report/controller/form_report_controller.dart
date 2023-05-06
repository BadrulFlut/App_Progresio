import 'package:flutter/material.dart';
import 'package:app_progresio/state_util.dart';
import '../view/form_report_view.dart';

class FormReportController extends State<FormReportView>
    implements MvcController {
  static late FormReportController instance;
  late FormReportView view;

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
