import 'package:flutter/material.dart';
import 'package:app_progresio/state_util.dart';
import '../view/Form_view.dart';

class FormController extends State<FormView> implements MvcController {
  static late FormController instance;
  late FormView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}