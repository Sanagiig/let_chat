import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class ChangeEmailPage extends GetView<ChangeEmailController> {
  const ChangeEmailPage({super.key});

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("ChangeEmailPage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChangeEmailController>(
      init: ChangeEmailController(),
      id: "change_email",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("change_email")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
