import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tira_app/controllers/forms_controller.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../../../../core/resources/color_manager.dart';
import '../../../../../../core/resources/strings_manager.dart';

class FormDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final FormController formController = Get.put(FormController());
    // formController.formValue == true?
    WebViewController controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {
            js();
          },
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }

            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(
        Uri.parse('https://flutter.dev'),
      )
      ..runJavaScript('''
var req = new XMLHttpRequest();
req.open('GET', "https://api.ipify.org/?format=json");
req.onload = function() {
  if (req.status == 200) {
    let response = JSON.parse(req.responseText);
    SnackBar.postMessage("IP Address: " + response.ip);
  } else {
    SnackBar.postMessage("Error: " + req.status);
  }
}
req.send();''')
          .then((value) => debugPrint('jj'))
          .catchError((onError) => debugPrint('$onError'));
    return Scaffold(
      backgroundColor: ColorManager.mainColor,
      floatingActionButton: IconButton(
          onPressed: () async {
            await controller.runJavaScript(
                "<script>alert('I am John in an annoying alert!')</script>");
            // log(userAgent.toString());
            // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            //   content: Text('${userAgent.toString}'),
            // ));
          },
          icon: const Icon(Icons.add)),
      appBar: AppBar(
        title: const Text(AppStrings.forms),
        leading: IconButton(
            onPressed: () => Get.back(), icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Column(
        children: [
          Expanded(
              child: WebViewWidget(
            controller: controller,
          ))
        ],
      ),
    );
  }

  static String js() {
    const String tempJS = '''
        (function() {
          window.testing = function(){
            try {
              MyChannel.postMessage("Hello from My Injected Channel");
            } catch (e) {}
            return "Injected Return";
          }
          window.testing();
        })();
    ''';
    return tempJS;
  }
}

///*****
/// ContainerBody(
//               widget: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: SingleChildScrollView(
//               child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'فتح باب التسجيل للتطوع في المجال الزراعي',
//                       style: TextStyle(
//                           fontSize: FontSize.s20,
//                           fontWeight: FontWeightManager.medium),
//                     ),
//                     FormWidget(label: 'الاسم الأول', hint: 'الاسم الأول'),
//                     FormWidget(label: 'اسم العائلة', hint: 'اسم العائلة'),
//                     FormWidget(label: 'تاريخ الميلاد', hint: 'تاريخ الميلاد'),
//                     FormWidget(label: 'العنوان', hint: 'العنوان'),
//                     FormWidget(
//                         label: 'الحالة الأكاديمية',
//                         hint: 'الحالة الأكاديمية'),
//                     UploadWidget(
//                         label: 'التوقيع',
//                         image: 'assets/images/sign.png',
//                         imageLabel: ''),
//                     Padding(
//                       padding: const EdgeInsets.all(20),
//                       child:
//                           AuthButton(onTap: (() {}), buttonText: 'تقدم الآن'),
//                     )
//                   ]),
//             ),
//           ))**//
