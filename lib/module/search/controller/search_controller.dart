import 'package:flutter/material.dart';
import 'package:app_progresio/state_util.dart';
import '../view/search_view.dart';

class SearchController extends State<SearchView> implements MvcController {
  static late SearchController instance;
  late SearchView view;

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
  TextEditingController searchController = TextEditingController();

  void onSubmitted(String value) {
    //Search
  }
}
