// import 'package:ata_app_app/responsive/textstyle.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:appinio_video_player/appinio_video_player.dart';

// class VideoController extends GetxController {
//   late List<CachedVideoPlayerController> _videoPlayerControllers;
//   late List<CustomVideoPlayerController> _customVideoPlayerControllers;
//   late List<CustomVideoPlayerWebController> _customVideoPlayerWebControllers;

//   final CustomVideoPlayerSettings _customVideoPlayerSettings =
//       const CustomVideoPlayerSettings(showSeekButtons: true);
//   List yourVideoUrlsList = [
//     'https://youtu.be/E5nLtx3KME8?si=QuobBC3URBLfORU6',
//     'https://youtu.be/E5nLtx3KME8?si=QuobBC3URBLfORU6'
//   ];
//   @override
//   void onInit() {
//     super.onInit();

//     // Initialize lists
//     _videoPlayerControllers = [];
//     _customVideoPlayerControllers = [];
//     _customVideoPlayerWebControllers = [];

//     // Populate lists with video controllers
//     for (String videoUrl in yourVideoUrlsList) {
//       CachedVideoPlayerController videoPlayerController =
//           CachedVideoPlayerController.network(videoUrl)
//             ..initialize().then((value) {});

//       CustomVideoPlayerController customVideoPlayerController =
//           CustomVideoPlayerController(
//         context: Get.context!,
//         videoPlayerController: videoPlayerController,
//         customVideoPlayerSettings: _customVideoPlayerSettings,
//       );

//       CustomVideoPlayerWebController customVideoPlayerWebController =
//           CustomVideoPlayerWebController(
//         webVideoPlayerSettings: CustomVideoPlayerWebSettings(
//           src: videoUrl,
//         ),
//       );

//       _videoPlayerControllers.add(videoPlayerController);
//       _customVideoPlayerControllers.add(customVideoPlayerController);
//       _customVideoPlayerWebControllers.add(customVideoPlayerWebController);
//     }
//   }

//   @override
//   void onClose() {
//     _videoPlayerControllers.forEach((controller) => controller.dispose());
//     _customVideoPlayerControllers.forEach((controller) => controller.dispose());
//     _customVideoPlayerWebControllers
//         .forEach((controller) => controller.dispose());
//     super.onClose();
//   }
// }

// class YourWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final VideoController videoController = Get.put(VideoController());

//     return YourWidgetContent();
//   }
// }

// class YourWidgetContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final VideoController videoController = Get.find<VideoController>();

//     // Use videoController to access video controllers and display videos

//     return ListView.builder(
//       itemCount: videoController.yourVideoUrlsList.length,
//       itemBuilder: (context, index) => ListView(
//         physics: const NeverScrollableScrollPhysics(),
//         children: [
//           if (kIsWeb)
//             Expanded(
//               child: CustomVideoPlayerWeb(
//                 customVideoPlayerWebController:
//                     videoController._customVideoPlayerWebControllers[index],
//               ),
//             )
//           else
//             CustomVideoPlayer(
//               customVideoPlayerController:
//                   videoController._customVideoPlayerControllers[index],
//             ),
//           Text(
//             'Cation',
//             style: gettextstylewhite(context),
//           )
//         ],
//       ),
//     );
//   }
// }
