import 'package:chewie_audio/chewie_audio.dart';
import 'package:flutter/material.dart';

class MusicScreen extends StatelessWidget {
  MusicScreen({super.key, required this.chewieCtrl, required this.name});

  ChewieAudioController chewieCtrl;
  String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: ChewieAudio(controller: chewieCtrl),
    );
  }
}
