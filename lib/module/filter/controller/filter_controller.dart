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
  final List<Map<String, dynamic>> data = [
    {
      "name": "Brooklyn Simmons",
      "description": "Safarudin",
      "time": "29 Maret 2021 14:30",
      "profile": "assets/images/userprof/user6.png",
    },
    {
      "name": "Kristin Watson",
      "description": "Safarudin",
      "time": "29 Maret 2021 14:30",
      "profile": "assets/images/userprof/user3.png",
    },
    {
      "name": "Bessie Cooper",
      "description": "Margareth",
      "time": "29 Maret 2021 14:30",
      "profile": "assets/images/userprof/user4.png",
    },
    {
      "name": "Theresa Webb",
      "description": "Margareth",
      "time": "29 Maret 2021 14:30",
      "profile": "assets/images/userprof/user7.png",
    },
    {
      "name": "Albert Flores",
      "description": "Safarudin",
      "time": "29 Maret 2021 14:30",
      "profile": "assets/images/userprof/user5.png",
    },
  ];
  final TextEditingController searchController = TextEditingController();
  bool isChecked = true;
  bool isDate = false;
  bool isClick = false;
  String dateTime1 = "";
  String dateTime2 = "";

  void onSubmitted(String value) {
    //Search
  }

  click() {
    setState(() {
      isClick = !isClick;
    });
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
