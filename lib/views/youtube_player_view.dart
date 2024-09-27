import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../controller/youtube_controller.dart';

class YoutubePlayerView extends StatelessWidget {
  final YoutubeController controller = Get.put(YoutubeController());

  YoutubePlayerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('YouTube Player'),
        actions: [
          IconButton(
            icon: const Icon(Icons.fullscreen),
            onPressed: () {
              controller.youtubePlayerController.toggleFullScreenMode();
            },
          ),
        ],
      ),
      body: YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: controller.youtubePlayerController,
          showVideoProgressIndicator: true,
          progressColors: const ProgressBarColors(
            playedColor: Colors.red,
            handleColor: Colors.redAccent,
          ),
          onReady: () {
            controller.onPlayerReady();
          },
        ),
        builder: (context, player) {
          return Column(
            children: [
              player,
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  controller.youtubePlayerController.load(
                    '9bZkp7q19f0', // Another video ID
                  );
                },
                child: const Text('Load Another Video'),
              ),
            ],
          );
        },
      ),
    );
  }
}
