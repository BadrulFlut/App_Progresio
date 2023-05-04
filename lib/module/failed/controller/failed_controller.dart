import 'package:flutter/material.dart';
import 'package:app_progresio/state_util.dart';
import '../view/failed_view.dart';

class FailedController extends State<FailedView> implements MvcController {
  static late FailedController instance;
  late FailedView view;

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