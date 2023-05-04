import 'package:flutter/material.dart';
import 'package:app_progresio/state_util.dart';
import '../view/loc_not_detected_view.dart';

class LocNotDetectedController extends State<LocNotDetectedView> implements MvcController {
  static late LocNotDetectedController instance;
  late LocNotDetectedView view;

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