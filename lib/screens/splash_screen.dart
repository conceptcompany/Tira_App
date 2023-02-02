import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tira_app/controllers/splash_controller.dart';

import '../core/resources/assets_manager.dart';
import '../core/resources/color_manager.dart';

class Splash extends StatelessWidget {
  Splash({super.key});
  final splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    splashController.onReady;
    return Container(
      decoration: BoxDecoration(
          gradient: gradient1,
          image: const DecorationImage(
              image: AssetImage(
                ImageAssets.splashLogo,
              ),
              scale: 1.1)),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Image.asset(
          ImageAssets.splashLogo2,
          scale: 1,
        ),
      ),
    );
  }
}
