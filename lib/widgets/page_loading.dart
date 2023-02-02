import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../core/resources/color_manager.dart';

class PageLoading extends StatelessWidget {
  const PageLoading({
    Key? key,
    this.color = ColorManager.white,
    this.size = 60,
  }) : super(key: key);
  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Center(
        child: SpinKitCircle(
          size: size,
          color: color,
        ),
      ),
    );
  }
}
