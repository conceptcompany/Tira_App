import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';
import 'package:tira_app/core/resources/color_manager.dart';

import '../controller/details_form_controller.dart';

class ServicesDetailsFormScreen extends GetView<DetailsFormController> {
  const ServicesDetailsFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(controller.form[0]),
          leading: IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(Icons.arrow_back_ios)),
        ),
        body: GetBuilder<DetailsFormController>(builder: (logic) {
          return Column(
            children: [
              if (logic.loadingPercentage < 100)
                LinearProgressIndicator(
                  value: logic.loadingPercentage / 100.0,
                  backgroundColor: ColorManager.textColor,
                  color: ColorManager.mainColor,
                ),
              Expanded(
                  child: InAppWebView(
                initialUrlRequest: URLRequest(url: Uri.parse(logic.urlLaunch)),
                initialOptions: logic.options,
                pullToRefreshController: logic.pullToRefreshController,
                onLoadStop: (controller, url) async {
                  logic.pullToRefreshController.endRefreshing();
                  // setState(() {
                  //   this.url = url.toString();
                  //   urlController.text = this.url;
                  // });
                },

                onLoadError: (controller, url, code, message) {
                  logic.pullToRefreshController.endRefreshing();
                },

                onProgressChanged: logic.onProgress,
                onWebViewCreated: (controller) {
                  logic.controller = controller;
                  controller.addWebMessageListener(WebMessageListener(
                    jsObjectName: 'formio',
                    onPostMessage:
                        (message, sourceOrigin, isMainFrame, replyProxy) {
                      print("From the JavaScript side:");
                    },
                  )
                      // handlerName: "formio",
                      // callback: (args) {
                      //   // Here you receive all the arguments from the JavaScript side
                      //   // that is a List<dynamic>
                      //   print("From the JavaScript side:");
                      //   print(args);
                      //   return args.reduce((curr, next) => curr + next);
                      );
                },
                onJsAlert: (controller, jsAlertRequest) async {
                  print(jsAlertRequest.message);
                  // Get.back();
                  return JsAlertResponse(action: JsAlertResponseAction.CONFIRM);
                },
                // controller: logic.controller,
              ))
            ],
          );
        }));
  }
}
