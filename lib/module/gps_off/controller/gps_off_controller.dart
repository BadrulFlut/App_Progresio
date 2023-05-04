import 'package:flutter/material.dart';
import 'package:app_progresio/state_util.dart';
import '../view/gps_off_view.dart';

class GpsOffController extends State<GpsOffView> implements MvcController {
  static late GpsOffController instance;
  late GpsOffView view;

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