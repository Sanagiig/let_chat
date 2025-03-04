import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class SubscribePage extends GetView<SubscribeController> {
  const SubscribePage({super.key});

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("SubscribePage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SubscribeController>(
      init: SubscribeController(),
      id: "subscribe",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("subscribe")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
