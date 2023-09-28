import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:tinut/model.dart';

class ScreenFFFF extends StatefulWidget {
  const ScreenFFFF({super.key});

  @override
  State<ScreenFFFF> createState() => _ScreenFFFFState();
}

List<DayModel>? data = [
  DayModel(afternoon: false, day: "monday", morning: true),
  DayModel(afternoon: false, day: "tuesday", morning: true),
  DayModel(afternoon: false, day: "wednesday", morning: true),
  DayModel(afternoon: false, day: "thursday", morning: true),
  DayModel(afternoon: false, day: "friday", morning: true),
  DayModel(afternoon: false, day: "saturday", morning: true),
  DayModel(afternoon: false, day: "sunday", morning: true),
];

class _ScreenFFFFState extends State<ScreenFFFF> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("dfdsf"),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: data!.map((e) {
                      return Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${e.day}"),
                            Row(
                              children: [
                                const Text("Morning: "),
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.blue),
                                  child: const Center(child: Text("7:00 AM")),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.blue),
                                  child: const Center(child: Text("7:00 AM")),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: e.morning == true
                                          ? Colors.green
                                          : Colors.red),
                                  child: const Center(child: Text("1:322")),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                const Text("Afternoom:"),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.blue),
                                  child: const Center(child: Text("1:00 PM")),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.blue),
                                  child: const Center(child: Text("1:00 PM")),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: e.afternoon == true
                                          ? Colors.green
                                          : Colors.red),
                                  child: const Center(child: Text("1:322")),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 0.5,
                              width: double.infinity,
                              color: Colors.black,
                            )
                          ],
                        ),
                      );
                    }).toList(),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
