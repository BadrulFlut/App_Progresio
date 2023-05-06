import 'package:flutter/material.dart';
import 'package:app_progresio/state_util.dart';
import '../view/notification_view.dart';

class NotificationController extends State<NotificationView>
    implements MvcController {
  static late NotificationController instance;
  late NotificationView view;

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
      "title": "Pilpres 2024",
      "work": "Workspace",
      "description": "Selamat Anda Tergabung dengan workspace Pilpres 2024",
      "last_time": "1 jam Lalu",
      "image": "",
      "isRead": false
    },
    {
      "title": "Pilpres 2024",
      "work": "Form",
      "description": "Form Survey terkait elektabilitas paslon pilpres 2024",
      "last_time": "2 jam Lalu",
      "image": "",
      "isRead": false
    },
    {
      "title": "Pilpres 2024",
      "work": "Info",
      "description": "Form Survey terkait elektabilitas paslon pilpres 2024",
      "last_time": "1 jam Lalu",
      "image": "ada",
      "isRead": true
    },
    {
      "title": "Pilpres 2024",
      "work": "Form",
      "description": "Form Survey terkait elektabilitas paslon pilpres 2024",
      "last_time": "2 jam Lalu",
      "image": "",
      "isRead": false
    }
  ];

  onRead(int id) {
    setState(() {
      data[id]["isRead"] = true;
    });
  }

  readAll() {
    setState(() {
      for (var i = 0; i < data.length; i++) {
        data[i]["isRead"] = true;
      }
    });
  }
}
