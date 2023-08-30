import 'package:flutter/material.dart';

import '../services/assets_manager.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final bool _isTyping = true;

  late TextEditingController textEditingController;

  @override
  void intState(){
    textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose(){
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(AssetsManager.openaiLogo),
        ),
        title: const Text("ChatGPT"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return const Text("Hello this is a text");
                  }),
            ),
            if (_isTyping) ...[
              const SpinKitThreeBounce(
                color: Colors.white,
                size: 18.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: textEditingController,
                      onSubmitted: (value){
                        // TODO send message
                      },
                      decoration: const InputDecoration.collapsed(hintText: "How can I help you?"),
                    ),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}