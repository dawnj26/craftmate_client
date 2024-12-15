import 'package:better_player_enhanced/better_player.dart';
import 'package:flutter/material.dart';

class VideoPlayer extends StatelessWidget {
  const VideoPlayer({super.key, required this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
    return BetterPlayer.network(url);
  }
}
