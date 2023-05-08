import 'package:flutter/material.dart';

class WidgetTest extends StatefulWidget {
  const WidgetTest({super.key});

  @override
  State<WidgetTest> createState() => _WidgetTestState();
}

class _WidgetTestState extends State<WidgetTest> {
  int number = 0;

  increnment() {
    setState(() {
      number++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.center,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueGrey,
        ),
        onPressed: () {
          setState(() {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  height: 300,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(number.toString()),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                        ),
                        onPressed: () {
                          setState(() {
                            increnment();
                          });
                        },
                        child: const Text("tambah"),
                      ),
                    ],
                  ),
                );
              },
            );
          });
        },
        child: const Text("Save"),
      ),
    );
  }
}
