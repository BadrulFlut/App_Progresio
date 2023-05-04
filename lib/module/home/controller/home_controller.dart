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

  void onSubmitted(String value) {
    //
  }
}
