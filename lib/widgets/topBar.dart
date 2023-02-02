import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/resources/color_manager.dart';
import 'bottomCont.dart';

class CustomTabBarWidget extends StatelessWidget {
  final Widget widget;

  const CustomTabBarWidget({
    super.key,
    required this.widget,
  });
  @override
  Widget build(BuildContext context) {
    final bool showFab = MediaQuery.of(context).viewInsets.bottom != 0.0;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.expand,
        children: [
          Positioned(
            top: -140.h,
            right: -30.w,
            child: Container(
              height: 484.h,
              width: 484.w,
              decoration: const BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: AssetImage('assets/images/tira.png'),
                      fit: BoxFit.contain)),
              child: Opacity(
                opacity: 0.91,
                child: Container(
                  height: 484.h,
                  width: 484.w,
                  decoration: BoxDecoration(
                    gradient: gradient1,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: const EdgeInsets.all(50),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(70),
                bottomLeft: Radius.circular(70),
              )),
              child: Image.asset(
                'assets/images/logo.png',
                scale: 1.6,
              ),
            ),
          ),
          const Align(
              alignment: Alignment.bottomRight, child: BottomContainer()),
          Positioned(
              top: 170.h,
              left: 30.w,
              right: 30.w,
              bottom: showFab ? 0 : null,
              child: widget),
        ],
      ),
    );
  }
}
