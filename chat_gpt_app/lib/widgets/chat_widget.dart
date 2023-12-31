import 'package:chat_gpt_app/constants/constant.dart';
import 'package:chat_gpt_app/services/assets_manager.dart';
import 'package:chat_gpt_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key, required this.msg, required this.chatIndex});

  final String msg;
  final int chatIndex;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          color: chatIndex == 0 ? scaffoldBackgroundColor : cardColor,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  chatIndex == 0 ? AssetsManager.userImage : AssetsManager.botImage,
                  height: 20,
                  width: 20,
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: TextWidget(
                    label: msg,
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                  
                ),
                const SizedBox(
                    width: 15,
                  ),

                chatIndex == 0 ? const SizedBox.shrink() 
                : const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.thumb_up_alt_outlined,
                      color: Colors.white,
                      size: 18,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.thumb_down_alt_outlined,
                      color: Colors.white,
                      size: 18,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
