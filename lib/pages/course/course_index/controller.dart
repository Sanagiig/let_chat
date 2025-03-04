import 'package:get/get.dart';

class CourseIndexController extends GetxController {
  CourseIndexController();

  _initData() {
    update(["course_index"]);
  }

  void onTap() {}

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  void onReady() {
    super.onReady();
    _initData();
  }

  // @override
  // void onClose() {
  //   super.onClose();
  // }
}
