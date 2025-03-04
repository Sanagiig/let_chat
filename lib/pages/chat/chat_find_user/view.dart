import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class ChatFindUserPage extends GetView<ChatFindUserController> {
  const ChatFindUserPage({super.key});

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("ChatFindUserPage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChatFindUserController>(
      init: ChatFindUserController(),
      id: "chat_find_user",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("chat_find_user")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
