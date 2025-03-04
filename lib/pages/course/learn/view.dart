import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class LearnPage extends GetView<LearnController> {
  const LearnPage({super.key});

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("LearnPage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LearnController>(
      init: LearnController(),
      id: "learn",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("learn")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
