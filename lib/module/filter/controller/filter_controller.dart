import 'package:flutter/material.dart';
import 'package:app_progresio/state_util.dart';
import '../view/filter_view.dart';

class FilterController extends State<FilterView> implements MvcController {
  static late FilterController instance;
  late FilterView view;

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
  bool isChecked = true;
  bool isDate = false;
  String dateTime1 = "";
  String dateTime2 = "";

  void onSubmitted(String value) {
    //Search
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
