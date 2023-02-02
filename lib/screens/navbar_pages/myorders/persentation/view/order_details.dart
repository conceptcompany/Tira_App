import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tira_app/screens/navbar_pages/myorders/send_notes.dart';
import 'package:tira_app/widgets/button.dart';
import 'package:tira_app/widgets/container_body.dart';

import '../../../../../../core/resources/color_manager.dart';
import '../../../../../core/resources/strings_manager.dart';
import '../../../../../core/resources/values_manager.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.mainColor,
        appBar: AppBar(
          title: const Text(
            AppStrings.orderDetails,
          ),
          leading: IconButton(
              onPressed: () => Get.back(), icon: const Icon(Icons.arrow_back_ios)),
        ),
        body: ContainerBody(
            widget: Container(
          margin: EdgeInsets.all(AppSize.s20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('تسجيل المواليد الجدد لشهر سبتمبر',
                  style: context.textTheme.bodyLarge),
              Text(
                'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق',
                maxLines: 10,
                style: TextStyle(color: secondColor, fontSize: 18.sp),
              ),
              Row(
                children: [
                  Image.asset('assets/images/person.png'),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    'الموظف المسؤول: محمد عمر',
                    style: TextStyle(color: secondColor, fontSize: 16.sp),
                  )
                ],
              ),
              Row(
                children: [
                  Image.asset('assets/images/person.png'),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    'فئة الخدمة:صحة',
                    style: TextStyle(color: secondColor, fontSize: 16.sp),
                  )
                ],
              ),
              Row(
                children: [
                  Image.asset('assets/images/num.png'),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    'رقم الطلب: 5',
                    style: TextStyle(color: secondColor, fontSize: 16.sp),
                  )
                ],
              ),
              Row(
                children: [
                  Image.asset('assets/images/status.png'),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    'حالة الطلب: جديد',
                    style: TextStyle(color: secondColor, fontSize: 16.sp),
                  )
                ],
              ),
              Row(
                children: [
                  Image.asset('assets/images/date.png'),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    'تاريخ التقديم: 3-8-2022',
                    style: TextStyle(color: secondColor, fontSize: 16.sp),
                  )
                ],
              ),
              Row(
                children: [
                  Image.asset('assets/images/date.png'),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    'تاريخ الإنتهاء: 3-8-2022',
                    style: TextStyle(color: secondColor, fontSize: 16.sp),
                  )
                ],
              ),
              Row(
                children: [
                  Image.asset('assets/images/attach.png'),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    'المرفقات: 2',
                    style: TextStyle(color: secondColor, fontSize: 16.sp),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: HexColor('#E4E4ED'),
                          fixedSize: Size(125.29.w, 27.2.h),
                          elevation: 0),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/images/pdf.png'),
                          Text(
                            'اسم الملف',
                            style: TextStyle(color: black, fontSize: 16.sp),
                          )
                        ],
                      )),
                  SizedBox(
                    width: 23.w,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: HexColor('#E4E4ED'),
                          fixedSize: Size(125.29.w, 27.2.h),
                          elevation: 0),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/images/pdf.png'),
                          Text(
                            'اسم الملف',
                            style: TextStyle(color: black, fontSize: 16.sp),
                          )
                        ],
                      )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Center(
                    child: AuthButton(
                        onTap: () {
                          Get.to(() => const SendNotes());
                        },
                        buttonText: 'المراسلات و الملاحظات')),
              )
            ],
          ),
        )));
  }
}
