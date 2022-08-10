import 'package:card_swiper/card_swiper.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram/app/modules/home/widgets/post/post_image.dart';
import 'package:instagram/app/modules/nav_bar/controllers/nav_bar_controller.dart';
import 'package:video_player/video_player.dart';
import 'dart:io' show Platform;

// class Reels extends StatefulWidget {
//   Reels({Key? key}) : super(key: key);

//   @override
//   State<Reels> createState() => _ReelsState();
// }

// class _ReelsState extends State<Reels> {
//   late VideoPlayerController _videoPlayerController;
//   late Future _intializeVideoPlayer;
//   bool startedPlaying = false;
//   bool isplaying = true;
//   NavBarController navBarController = Get.put(NavBarController());

//   @override
//   void initState() {
//     super.initState();

//     _videoPlayerController =
//         VideoPlayerController.asset('assets/videos/dog_reel.mp4');
//     _intializeVideoPlayer = _videoPlayerController.initialize();
//     _videoPlayerController.play();
//     _videoPlayerController.setLooping(true);
//   }

//   @override
//   void dispose() {
//     _videoPlayerController.dispose();
//     super.dispose();
//   }

//   // Future<bool> started() async {
//   //   await _videoPlayerController.initialize();
//   //   await _videoPlayerController.play();
//   //   startedPlaying = true;
//   //   return true;
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//         future: _intializeVideoPlayer,
//         builder: (_, __) {
//           if (__.connectionState == ConnectionState.done) {
//             return GestureDetector(
//               onTap: () {
//                 isplaying
//                     ? _videoPlayerController.pause()
//                     : _videoPlayerController.play();
//                 setState(() {
//                   isplaying = !isplaying;
//                   print(isplaying);
//                 });
//               },
//               child: Stack(
//                 children: [
//                   VideoPlayer(_videoPlayerController),
//                   Container(
//                     decoration: BoxDecoration(
//                       gradient: LinearGradient(
//                           colors: [
//                             Colors.black.withOpacity(0.3),
//                             Colors.transparent
//                           ],
//                           end: const Alignment(0, -0.75),
//                           begin: const Alignment(0, 0.1)),
//                     ),
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                       gradient: LinearGradient(
//                           colors: [
//                             Colors.black.withOpacity(0.3),
//                             Colors.transparent
//                           ],
//                           begin: const Alignment(0, -0.75),
//                           end: const Alignment(0, 0.1)),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.fromLTRB(10, 15, 10, 8),
//                     child: Column(
//                       children: [
//                         Container(
//                           child: Row(
//                             children: [
//                               const Flexible(
//                                 flex: 8,
//                                 child: Text(
//                                   'Reels',
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 20),
//                                 ),
//                               ),

//                               Flexible(
//                                 flex: 2,
//                                 child: Container(
//                                   // color: Colors.amber,
//                                   child: IconButton(
//                                       onPressed: () {},
//                                       icon: const Icon(
//                                         Icons.camera_alt_outlined,
//                                         color: Colors.white,
//                                       )),
//                                 ),
//                               ),
//                               // Expanded(flex: 8, child: Text('Reels')),
//                               // Expanded(flex: 2, child: Text('Reels')),
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           } else {
//             Container(
//               color: Colors.blue,
//             );
//           }
//           return Container();
//         });

//     // Material(
//     //   elevation: 0,
//     //   child: Center(
//     //     child: FutureBuilder<bool>(
//     //       future: started(),
//     //       builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
//     //         if (snapshot.data ?? false) {
//     //           return AspectRatio(
//     //             aspectRatio: _videoPlayerController.value.aspectRatio,
//     //             child: VideoPlayer(_videoPlayerController),
//     //           );
//     //         } else {
//     //           return const Text('waiting for video to load');
//     //         }
//     //       },
//     //     ),
//     //   ),
//     // );
//   }
// }

/// *******************************************************/

class Reels extends StatelessWidget {
  final List<String> videos = [
    'https://assets.mixkit.co/videos/preview/mixkit-taking-photos-from-different-angles-of-a-model-34421-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-young-mother-with-her-little-daughter-decorating-a-christmas-tree-39745-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-mother-with-her-little-daughter-eating-a-marshmallow-in-nature-39764-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-girl-in-neon-sign-1232-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-winter-fashion-cold-looking-woman-concept-video-39874-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-womans-feet-splashing-in-the-pool-1261-large.mp4',
    'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Swiper(
              itemBuilder: (BuildContext context, int index) {
                return ContentScreen(
                  src: videos[index],
                );
              },
              itemCount: videos.length,
              scrollDirection: Axis.vertical,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Reels',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(Icons.camera_alt),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContentScreen extends StatefulWidget {
  final String? src;

  const ContentScreen({Key? key, this.src}) : super(key: key);

  @override
  _ContentScreenState createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen>
    with SingleTickerProviderStateMixin {
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;
  bool volume = false;
  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  Future initializePlayer() async {
    _videoPlayerController = VideoPlayerController.network(widget.src!);
    await Future.wait([_videoPlayerController.initialize()]);
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: true,
      showControls: false,
      looping: true,
    );
    setState(() {});
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        _chewieController != null &&
                _chewieController!.videoPlayerController.value.isInitialized
            ? GestureDetector(
                onLongPress: () {
                  _videoPlayerController.pause();
                },
                // onLongPressCancel: () {
                //   _videoPlayerController.play();
                // },
                onLongPressEnd: (details) {
                  _videoPlayerController.play();
                },
                // onTap: () {
                //   setState(() {
                //     volume = !volume;
                //   });
                // },
                child: VideoPlayer(_videoPlayerController)
                // Chewie(
                //   controller: _chewieController!,
                // ),
                )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Platform.isAndroid
                      ? const CircularProgressIndicator()
                      : const CupertinoActivityIndicator(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Text('Loading...')
                ],
              ),
        // if (volume)
        //   AnimatedOpacity(
        //     duration: const Duration(milliseconds: 200),
        //     opacity: volume ? 1 : 0,
        //     child: LikeAnimation(
        //       isAnimating: volume,
        //       duration: const Duration(
        //         milliseconds: 400,
        //       ),
        //       onEnd: () {
        //         setState(() {
        //           volume = false;
        //         });
        //       },
        //       child: CircleAvatar(
        //         backgroundColor: Colors.black.withOpacity(0.4),
        //         radius: 20,
        //         child: const Icon(Icons.volume_up),
        //       ),
        //     ),
        //   ),
        // Center(
        //   child: LikeAnimation(
        //     child: CircleAvatar(
        //       backgroundColor: Colors.black.withOpacity(0.4),
        //       radius: 30,
        //       child: const Icon(Icons.volume_up),
        //     ),
        //   ),
        // ),
        OptionsScreen()
      ],
    );
  }
}

// class LikeIcon extends StatelessWidget {
//   Future<int> tempFuture() async {
//     return Future.delayed(const Duration(seconds: 1));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: FutureBuilder(
//         future: tempFuture(),
//         builder: (context, snapshot) =>
//             snapshot.connectionState != ConnectionState.done
//                 ? const Icon(Icons.favorite, size: 110)
//                 : const SizedBox(),
//       ),
//     );
//   }
// }

class OptionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 16,
                        child: Icon(Icons.person, size: 18),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      const Text('Page_name'),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      const Icon(Icons.verified, size: 15),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: MediaQuery.of(context).size.height * 0.04,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                            border: Border.all(color: Colors.white)),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Follow',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  const Text('Caption'),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.music_note,
                        size: 15,
                      ),
                      Text('Original Audio - some music track--'),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  const Icon(Icons.favorite_outline),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  const Text('601k'),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Icon(Icons.messenger_outline),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  const Text('1123'),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Transform(
                    transform: Matrix4.rotationZ(5.8),
                    child: const Icon(Icons.send),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Icon(Icons.more_vert),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.09,
                      height: MediaQuery.of(context).size.height * 0.04,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                          border: Border.all(color: Colors.white, width: 2))),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
