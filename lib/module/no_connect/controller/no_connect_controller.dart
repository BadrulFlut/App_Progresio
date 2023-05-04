import 'package:flutter/material.dart';
import 'package:app_progresio/state_util.dart';
import '../view/no_connect_view.dart';

class NoConnectController extends State<NoConnectView> implements MvcController {
  static late NoConnectController instance;
  late NoConnectView view;

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