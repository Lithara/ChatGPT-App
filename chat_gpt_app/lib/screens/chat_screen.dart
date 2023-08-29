import 'package:flutter/material.dart';

import '../services/assets_manager.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Image.asset(AssetsManager.openaiLogo)
      ),
    );
  }
}