import 'package:flutter/material.dart';
import 'package:messenger/widget/widgetbody/messenger_variable.dart';
class StoryApp extends StatelessWidget {
   String image;
   String name;
   StoryApp({super.key,required this.image,required this.name});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 10,
      ),
      width: VariableApp.widthStory,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                radius: VariableApp.radiusImageStory,
                backgroundImage: AssetImage(image),

              ),
              const CircleAvatar(
                radius: VariableApp.radiusWhiteCircleStory,
                backgroundColor: Colors.white,
              ),
              const CircleAvatar(
                radius: VariableApp.radiusGreenCircleStory,
                backgroundColor: Colors.green,
              ),
            ],
          ),
          const SizedBox(height: 5,),
          Text(
            name,
            maxLines: VariableApp.maxLineText,
            overflow: TextOverflow.ellipsis,
          ),

        ],
      ),
    );
  }
}
