import 'dart:async';

import 'package:common/common.dart';
import 'package:get/get.dart';
import '../../routes/app_navigator.dart';

class SplashLogic extends GetxController {

  String? get userID => DataSp.userID;

  String? get token => DataSp.imToken;

  late StreamSubscription initializedSub;

  @override
  void onInit() {
    super.onInit();
  }

  _login() async {
  }

  @override
  void onClose() {
    initializedSub.cancel();
    super.onClose();
  }
}
