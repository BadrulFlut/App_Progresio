import 'package:flutter/material.dart';
import 'package:app_progresio/state_util.dart';
import '../view/forget_password_view.dart';

class ForgetPasswordController extends State<ForgetPasswordView>
    implements MvcController {
  static late ForgetPasswordController instance;
  late ForgetPasswordView view;

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
