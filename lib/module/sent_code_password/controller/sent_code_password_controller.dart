import 'package:flutter/material.dart';
import 'package:app_progresio/state_util.dart';
import '../view/sent_code_password_view.dart';

class SentCodePasswordController extends State<SentCodePasswordView>
    implements MvcController {
  static late SentCodePasswordController instance;
  late SentCodePasswordView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  final FocusNode digitOneFocusNode = FocusNode();
  final FocusNode digitTwoFocusNode = FocusNode();
  final FocusNode digitThreeFocusNode = FocusNode();
  final FocusNode digitFourFocusNode = FocusNode();
  final TextEditingController digitOneController = TextEditingController();
  final TextEditingController digitTwoController = TextEditingController();
  final TextEditingController digitThreeController = TextEditingController();
  final TextEditingController digitFourController = TextEditingController();

  void onDigitOneSubmitted(String value) {
    digitOneController.text = value;
    FocusScope.of(context).requestFocus(digitTwoFocusNode);
  }

  void onDigitTwoSubmitted(String value) {
    digitTwoController.text = value;
    FocusScope.of(context).requestFocus(digitThreeFocusNode);
  }

  void onDigitThreeSubmitted(String value) {
    digitThreeController.text = value;
    FocusScope.of(context).requestFocus(digitFourFocusNode);
  }

  void onDigitFourSubmitted(String value) {
    digitFourController.text = value;
  }
}
