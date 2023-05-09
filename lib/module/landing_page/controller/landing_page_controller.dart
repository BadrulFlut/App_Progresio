import 'package:app_progresio/core.dart';
import 'package:flutter/material.dart';
import 'package:app_progresio/state_util.dart';
import '../view/landing_page_view.dart';

class LandingPageController extends State<LandingPageView>
    implements MvcController {
  static late LandingPageController instance;
  late LandingPageView view;

  @override
  void initState() {
    instance = this;
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (_) => const LoginView()));
    });
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
