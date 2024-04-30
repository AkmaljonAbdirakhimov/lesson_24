import 'package:flutter/material.dart';
import 'package:lesson_24/screens/start_screen.dart';

void main(List<String> args) {
  runApp(const CourseApp());
}

class CourseApp extends StatelessWidget {
  const CourseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartScreen(),
    );
  }
}

// class MyApp extends StatefulWidget {
//   MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   late final VideoPlayerController videoPlayerController;

//   @override
//   void initState() {
//     super.initState();

//     // videoPlayerController = VideoPlayerController.networkUrl(Uri.parse(
//     //     'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'));
//     videoPlayerController =
//         VideoPlayerController.asset("assets/videos/bunny.mp4");
//     // video'ni yuklashga start beramiz
//     videoPlayerController.initialize().then((_) => setState(() {}));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Row(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Container(
//                 width: 40,
//                 height: 40,
//                 padding: const EdgeInsets.only(top: 12, left: 5, right: 5),
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: Colors.orange.shade100,
//                 ),
//                 child: ClipRect(
//                   child: Image.asset(
//                     "assets/images/user.png",
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//               const SizedBox(width: 10),
//               const Text(
//                 "Hi, John Smith 👋",
//                 style: TextStyle(
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//             ],
//           ),
//           centerTitle: false,
//           actions: [
//             Padding(
//               padding: const EdgeInsets.only(right: 8.0),
//               child: IconButton(
//                 onPressed: () {},
//                 style: IconButton.styleFrom(
//                   side: BorderSide(
//                     color: Colors.grey.shade300,
//                   ),
//                 ),
//                 icon: const Icon(
//                   Icons.notifications,
//                 ),
//               ),
//             ),
//           ],
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             children: [
//               videoPlayerController.value.isInitialized
//                   ? AspectRatio(
//                       aspectRatio: videoPlayerController.value.aspectRatio,
//                       child: VideoPlayer(videoPlayerController),
//                     )
//                   : const Text("Video yuklanmadi"),
//               Container(
//                 padding: const EdgeInsets.all(20),
//                 decoration: const BoxDecoration(
//                   color: Color.fromARGB(111, 255, 168, 38),
//                 ),
//                 // child: Row(
//                 //   children: [
//                 //     Text("Ijodkor Bo'lishni O'rganing"),
//                 //   ],
//                 // ),
//               ),
//             ],
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             setState(() {
//               videoPlayerController.value.isPlaying
//                   ? videoPlayerController.pause()
//                   : videoPlayerController.play();
//             });
//           },
//           child: Icon(
//             videoPlayerController.value.isPlaying
//                 ? Icons.pause
//                 : Icons.play_arrow,
//           ),
//         ),
//       ),
//     );
//   }
// }
