import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tira_app/screens/navbar_pages/myorders/notes_cards.dart';
import 'package:tira_app/widgets/container_body.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../core/resources/strings_manager.dart';

class SendNotes extends StatelessWidget {
  const SendNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.mainColor,
      appBar: AppBar(
        title: const Text(
          AppStrings.notes,
        ),
        leading: IconButton(
            onPressed: () => Get.back(), icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: ContainerBody(
        widget: Column(
          children: [
            Container(
                margin: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 20.h),
                height: 691.h,
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: ((context, index) {
                      return const NotesCard();
                    }))),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 75.h,
                  width: 325.01.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: ColorManager.mainColor, width: 2),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '...اكتب رسالة',
                          style: TextStyle(color: secondColor, fontSize: 20.sp),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.attach_file,
                          color: secondColor,
                          size: 25,
                        ),
                      )
                    ],
                  ),
                ),
                Image.asset('assets/images/Send.png')
              ],
            )
          ],
        ),
      ),
    );
  }
}
