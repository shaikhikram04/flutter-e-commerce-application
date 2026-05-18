import 'package:flutter_e_commerce/utils/helpers/network_manager.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/utils.dart';

class GeneralBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkManager());
  }
}
