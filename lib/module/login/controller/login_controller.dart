import 'package:flutter/material.dart';
import 'package:app_progresio/state_util.dart';
import '../view/login_view.dart';

class LoginController extends State<LoginView> implements MvcController {
  static late LoginController instance;
  late LoginView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  bool obscureText = true;
  bool isChecked = false;

  visible() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  check() {
    setState(() {
      isChecked = !isChecked;
    });
  }
}
