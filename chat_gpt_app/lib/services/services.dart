import 'package:flutter/material.dart';

import '../constants/constant.dart';
import '../widgets/text_widget.dart';

class Services {
  static Future<void> showModalSheet({required BuildContext context}) async{

    await showModalBottomSheet(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                backgroundColor: scaffoldBackgroundColor,
                context: context,
                builder: (context) {
                  return const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Flexible(
                          child: TextWidget(
                            label: "Choose Model :",
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
  }
} 