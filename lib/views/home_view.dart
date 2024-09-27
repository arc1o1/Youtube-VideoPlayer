import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'youtube_player_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('YouTube Player Home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.to(() => YoutubePlayerView());
          },
          child: const Text('Go to YouTube Player'),
        ),
      ),
    );
  }
}
