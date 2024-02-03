import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:ata_app_app/view/traing_course.dart';
import 'package:ata_app_app/view/traing_document.dart';
import 'package:ata_app_app/view/training_home.dart';
import 'package:ata_app_app/view/training_playylist.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Search_screen_product.dart';
import 'sc_account_screen.dart';

class TrainingScreen extends StatefulWidget {
  const TrainingScreen({super.key});

  @override
  State<TrainingScreen> createState() => _TrainingScreenState();
}

class _TrainingScreenState extends State<TrainingScreen> {
  final _pageController = PageController(initialPage: 0);

  final _controller = NotchBottomBarController(index: 0);

  int maxCount = 4;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  /// widget list
  final List<Widget> bottomBarPages = [
    const Traing_Home(),
    const Training_Playlist(),
    const Training_Documnen(),
    const Training_course()
  ];
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(actions: [
        CircleAvatar(
            foregroundColor: Colors.white,
            child: IconButton(
                onPressed: () async {
                  Get.to(SecondScreenACC());
                },
                icon: const Icon(
                  Icons.person,
                  color: Colors.white,
                ))),
        const SizedBox(
          width: 10,
        ),
        CircleAvatar(
            child: IconButton(
                onPressed: () async {
                  Get.to(Search_product());
                },
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ))),
        const SizedBox(
          width: 10,
        )
      ]),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
              notchBottomBarController: _controller,
              color: Colors.white,
              showLabel: false,
              notchColor: Colors.blue.shade400,
              removeMargins: false,
              bottomBarWidth: width,
              durationInMilliSeconds: 300,
              bottomBarItems: const [
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.home_filled,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Icon(
                    Icons.home_filled,
                    color: Colors.white,
                  ),
                  itemLabel: 'Page 1',
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.video_collection_rounded,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Icon(
                    Icons.video_collection_rounded,
                    color: Colors.white,
                  ),
                  itemLabel: 'Page 2',
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.document_scanner_rounded,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Icon(
                    Icons.document_scanner_rounded,
                    color: Colors.white,
                  ),
                  itemLabel: 'Page 3',
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.computer_sharp,
                    color: Colors.blueGrey,
                  ),
                  activeItem: Icon(
                    Icons.computer_sharp,
                    color: Colors.white,
                  ),
                  itemLabel: 'Page 2',
                ),
              ],
              onTap: (index) {
                _pageController.jumpToPage(index);
              },
              kIconSize: 24.0,
              kBottomRadius: 10.5,
            )
          : null,
    );
  }
}
