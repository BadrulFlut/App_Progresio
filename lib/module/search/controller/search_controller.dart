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
  TextEditingController searchController = TextEditingController();

  void onSubmitted(String value) {
    //Search
  }
}
