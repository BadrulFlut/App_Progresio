import 'package:flutter/material.dart';
import 'package:app_progresio/state_util.dart';
import '../view/success_view.dart';

class SuccessController extends State<SuccessView> implements MvcController {
  static late SuccessController instance;
  late SuccessView view;

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