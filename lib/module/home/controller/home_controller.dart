import 'package:app_progresio/core.dart';
import 'package:flutter/material.dart';
import 'package:app_progresio/state_util.dart';
import '../view/home_view.dart';

class HomeController extends State<HomeView> implements MvcController {
  static late HomeController instance;
  late HomeView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  final TextEditingController searchController = TextEditingController();
  ScrollController scrollController = ScrollController();

  bool isChecked = true;
  bool isDate = false;
  String dateTime1 = "";
  String dateTime2 = "";

  void onSubmitted(String value) {
    Navigator.push(
        context, MaterialPageRoute(builder: (_) => const FilterView()));
  }

  check() {
    setState(() {
      isChecked = !isChecked;
    });
  }

  checkDate() {
    setState(() {
      isDate = !isDate;
    });
  }
}
