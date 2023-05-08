import 'package:flutter/material.dart';
import 'package:app_progresio/state_util.dart';
import '../view/Workspace_view.dart';

class WorkspaceController extends State<WorkspaceView> implements MvcController {
  static late WorkspaceController instance;
  late WorkspaceView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}