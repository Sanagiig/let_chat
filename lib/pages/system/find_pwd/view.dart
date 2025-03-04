import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class FindPwdPage extends GetView<FindPwdController> {
  const FindPwdPage({super.key});

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("FindPwdPage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FindPwdController>(
      init: FindPwdController(),
      id: "find_pwd",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("find_pwd")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
