import 'package:flutter/material.dart';
import 'package:messenger/widget/widgetbody/messenger_variable.dart';
class Message extends StatelessWidget {
  String name;
  String messageText;
  String time;
  String image;
  Message({super.key,required this.name,required this.messageText,required this.time,required this.image});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(
          top: 10,
          bottom: 10,
      ),
      child: Row(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                radius: VariableApp.radiusImageMessage,
                backgroundImage: AssetImage(image),
              ),
              const CircleAvatar(
                radius: VariableApp.radiusWhiteCircleMessage,
                backgroundColor: Colors.white,
              ),
              const CircleAvatar(
                radius: VariableApp.radiusGreenCircleMessae,
                backgroundColor: Colors.green,
              ),
            ],
          ),
          const SizedBox(width: 10,),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 6,),
                Row(
                  children: [
                    Expanded(
                      child: Text(messageText,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          height: 1,
                        ),
                      ),
                    ),
                    Container(
                      width: 7,
                      height: 7,
                      decoration: const BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle
                      ),
                    ),
                    const SizedBox(width: 5,),
                    Text(time),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
