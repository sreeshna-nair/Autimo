import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(VideoPlayerApp1());
}

class VideoPlayerApp1 extends StatelessWidget {
  const VideoPlayerApp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "world of Numbers 😀",
      home: VideoPlayer1Screen(),
    );
  }
}

class VideoPlayer1Screen extends StatefulWidget {
  const VideoPlayer1Screen({Key? key}) : super(key: key);

  @override
  _VideoPlayerScreen1State createState() => _VideoPlayerScreen1State();
}

class _VideoPlayerScreen1State extends State<VideoPlayer1Screen> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.asset('assets/videos/numbersvideo.mp4');
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('world of Numbers😀'),
      ),
      body: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            }
            return AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              _controller.play();
            }
          });
        },
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}
