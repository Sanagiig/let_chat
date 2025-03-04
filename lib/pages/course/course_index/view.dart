import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class CourseIndexPage extends GetView<CourseIndexController> {
  const CourseIndexPage({super.key});

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("CourseIndexPage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CourseIndexController>(
      init: CourseIndexController(),
      id: "course_index",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("course_index")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
