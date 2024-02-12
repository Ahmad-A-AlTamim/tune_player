// ignore_for_file: must_be_immutable

import "package:flutter/material.dart";
import "package:tune_player/modules/TuneModule.dart";

import "../components/TuneCategory.dart";

class HomePage extends StatelessWidget {
  List<TuneModule> infoList = [
    TuneModule(backgroundColor: Colors.red, audioPath: "note1.wav"),
    TuneModule(backgroundColor: Colors.green, audioPath: "note2.wav"),
    TuneModule(backgroundColor: Colors.blue, audioPath: "note3.wav"),
    TuneModule(backgroundColor: Colors.yellow, audioPath: "note4.wav"),
    TuneModule(backgroundColor: Colors.deepPurple, audioPath: "note5.wav"),
    TuneModule(backgroundColor: Colors.grey, audioPath: "note6.wav"),
    TuneModule(backgroundColor: Colors.black, audioPath: "note7.wav"),
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: infoList.map((e) => TuneCategory(info: e)).toList(),
      ),
    );
  }
}
