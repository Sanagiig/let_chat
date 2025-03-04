import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class ChatIndexPage extends GetView<ChatIndexController> {
  const ChatIndexPage({super.key});

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("ChatIndexPage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChatIndexController>(
      init: ChatIndexController(),
      id: "chat_index",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("chat_index")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
