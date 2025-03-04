import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class MessageIndexPage extends GetView<MessageIndexController> {
  const MessageIndexPage({super.key});

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("MessageIndexPage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MessageIndexController>(
      init: MessageIndexController(),
      id: "message_index",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("message_index")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
