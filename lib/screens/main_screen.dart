import 'package:act2/screens/music_screen.dart';
import 'package:chewie_audio/chewie_audio.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late VideoPlayerController videoCtrl;
  late ChewieAudioController chewieCtrl;
  late VideoPlayerController videoCtrl1;
  late ChewieAudioController chewieCtrl1;
  late VideoPlayerController videoCtrl2;
  late ChewieAudioController chewieCtrl2;
  late VideoPlayerController videoCtrl3;
  late ChewieAudioController chewieCtrl3;
  late VideoPlayerController videoCtrl4;
  late ChewieAudioController chewieCtrl4;
  // late List<VideoPlayerController> videoCtrls = [];
  // late List<ChewieAudioController> chewieCtrls = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    videoCtrl = VideoPlayerController.asset("assets/sample_audio.mp3");
    videoCtrl1 = VideoPlayerController.asset("assets/sample_music2.mp4");
    videoCtrl2 = VideoPlayerController.asset("assets/sample_music3.mp3");
    videoCtrl3 = VideoPlayerController.asset("assets/sample_music4.mp3");
    videoCtrl4 = VideoPlayerController.asset("assets/sample_music5.mp3");

    // for (int i = 0; i < videoCtrls.length; i++) {
    //   videoCtrls[i].initialize();
    //   chewieCtrls.add(
    //     ChewieAudioController(
    //       videoPlayerController: videoCtrls[i],
    //       looping: true,
    //     ),
    //   );
    // }

    chewieCtrl = ChewieAudioController(videoPlayerController: videoCtrl);
    chewieCtrl1 = ChewieAudioController(videoPlayerController: videoCtrl1);
    chewieCtrl2 = ChewieAudioController(videoPlayerController: videoCtrl2);
    chewieCtrl3 = ChewieAudioController(videoPlayerController: videoCtrl3);
    chewieCtrl4 = ChewieAudioController(videoPlayerController: videoCtrl4);
  }

  @override
  Widget build(BuildContext context) {
    // return Scaffold();
    return Scaffold(
      appBar: AppBar(title: Text("My favorite musics")),
      body: ListView(
        children: [
          ListTile(
            title: Text("unknown"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {
                    return MusicScreen(chewieCtrl: chewieCtrl, name: "unknown");
                  },
                ),
              );
            },
          ),
          ListTile(
            title: Text("Poker Face"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {
                    return MusicScreen(
                      chewieCtrl: chewieCtrl1,
                      name: "Poker face",
                    );
                  },
                ),
              );
            },
          ),
          ListTile(
            title: Text("Caprice of the Leaves"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {
                    return MusicScreen(
                      chewieCtrl: chewieCtrl2,
                      name: "Caprice of the leaves",
                    );
                  },
                ),
              );
            },
          ),
          ListTile(
            title: Text("Noxian Grand General"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {
                    return MusicScreen(
                      chewieCtrl: chewieCtrl4,
                      name: "Noxian Grand General",
                    );
                  },
                ),
              );
            },
          ),
          ListTile(
            title: Text("Playground"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {
                    return MusicScreen(
                      chewieCtrl: chewieCtrl3,
                      name: "Playground",
                    );
                  },
                ),
              );
            },
          ),
          // ChewieAudio(controller: chewieCtrl),
          // ChewieAudio(controller: chewieCtrl1),
          // ChewieAudio(controller: chewieCtrl2),
          // ChewieAudio(controller: chewieCtrl3),
          // ChewieAudio(controller: chewieCtrl4),
        ],
      ),
    );
  }
}
