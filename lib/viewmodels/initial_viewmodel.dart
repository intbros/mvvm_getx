import 'package:get/get.dart';
import '../services/data_service.dart';
import 'home_viewmodel.dart';

class InitialViewModel implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DataService>(() => DataService());
    Get.lazyPut<HomeViewModel>(() => HomeViewModel());
  }
}