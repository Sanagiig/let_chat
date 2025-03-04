import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class ChangePwdPage extends GetView<ChangePwdController> {
  const ChangePwdPage({super.key});

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("ChangePwdPage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChangePwdController>(
      init: ChangePwdController(),
      id: "change_pwd",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("change_pwd")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
