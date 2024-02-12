// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:tune_player/modules/TuneModule.dart';
import 'package:audioplayers/audioplayers.dart';

class TuneCategory extends StatelessWidget {
  TuneModule info;
  TuneCategory({required this.info});
  AudioPlayer player = AudioPlayer();

  Future<void> playAudio() async {
    await player.stop();
    await player.play(AssetSource(info.audioPath), volume: 1);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: playAudio,
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 7,
        color: info.backgroundColor,
      ),
    );
  }
}
