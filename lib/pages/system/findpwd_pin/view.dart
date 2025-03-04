import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class FindpwdPinPage extends GetView<FindpwdPinController> {
  const FindpwdPinPage({super.key});

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("FindpwdPinPage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FindpwdPinController>(
      init: FindpwdPinController(),
      id: "findpwd_pin",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("findpwd_pin")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
