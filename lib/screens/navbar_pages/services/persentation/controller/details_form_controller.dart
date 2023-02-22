import 'dart:io';

import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';
import 'package:tira_app/core/resources/color_manager.dart';

import '../../../../../core/network/api_constant.dart';

class DetailsFormController extends GetxController {
  late InAppWebViewController controller;
  late InAppWebViewGroupOptions options;
  late PullToRefreshController pullToRefreshController;

  var loadingPercentage = 0;
  String urlLaunch = '';
  final form = Get.arguments;
  @override
  void onInit() {
    super.onInit();
    print(form.toString());
    urlLaunch = '${ApiConstant.baseUrl}/${form[2]}';
    print(urlLaunch);
    options = InAppWebViewGroupOptions(
        crossPlatform: InAppWebViewOptions(
          useShouldOverrideUrlLoading: true,
          mediaPlaybackRequiresUserGesture: false,
        ),
        android: AndroidInAppWebViewOptions(
          useHybridComposition: true,
        ),
        ios: IOSInAppWebViewOptions(
          allowsInlineMediaPlayback: true,
        ));
    pullToRefreshController = PullToRefreshController(
      options: PullToRefreshOptions(color: ColorManager.mainColor),
      onRefresh: () async {
        if (Platform.isAndroid) {
          controller.reload();
        } else if (Platform.isIOS) {
          controller.loadUrl(
              urlRequest: URLRequest(url: await controller.getUrl()));
        }
      },
    );
    // controller = WebViewController()
    //   ..setJavaScriptMode(JavaScriptMode.unrestricted)
    //   ..setBackgroundColor(const Color(0x00000000))
    //   ..setNavigationDelegate(
    //     NavigationDelegate(
    //       onPageStarted: (url) {
    //         loadingPercentage = 0;
    //         update();
    //       },
    //       onProgress: (progress) {
    //         loadingPercentage = progress;
    //         update();
    //       },
    //       onPageFinished: (url) {
    //         loadingPercentage = 100;
    //         update();
    //       },
    //       onWebResourceError: (WebResourceError error) {},
    //       onNavigationRequest: (NavigationRequest request) {
    //         if (request.url.startsWith('https://www.youtube.com/')) {
    //           return NavigationDecision.prevent;
    //         }
    //
    //         return NavigationDecision.navigate;
    //       },
    //     ),
    //   )
    //   ..loadRequest(
    //     Uri.parse(urlLaunch),
    //   )
    //       .then((value) => debugPrint('jj'))
    //       .catchError((onError) => debugPrint('$onError'));
  }

  void onProgress(InAppWebViewController controller, int progress) {
    if (progress == 100) {
      pullToRefreshController.endRefreshing();
    }
    loadingPercentage = progress;
    update();
  }
}
