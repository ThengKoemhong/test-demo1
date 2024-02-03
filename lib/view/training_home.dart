import 'package:ata_app_app/responsive/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class Traing_Home extends StatelessWidget {
  const Traing_Home({super.key});

  @override
  Widget build(BuildContext context) {
    final widht = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageSlideshow(
              indicatorColor: Colors.white,
              onPageChanged: (value) {
                debugPrint('Page changed: $value');
              },
              autoPlayInterval: 3000,
              isLoop: true,
              children: [
                SizedBox(
                  child: Image.asset(
                    'lib/img/Artboard 1 (2).png',
                    fit: BoxFit.cover,
                  ),
                ),
                Image.asset(
                  'lib/img/Artboard 5.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'lib/img/Artboard 6.png',
                  fit: BoxFit.cover,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Video couse',
                    style: gettextstylebluebold(context),
                  ),
                  Text(
                    'Free Video',
                    style: gettextstyleblueboldunderline(context),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
