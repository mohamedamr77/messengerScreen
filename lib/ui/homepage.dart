import 'package:flutter/material.dart';
import 'package:messenger/widget/list/liststory.dart';
import 'package:messenger/widget/widgetbody/message.dart';
import 'package:messenger/widget/widgetapppar/apppar.dart';
import '../widget/list/listmessage.dart';
import '../widget/widgetbody/search.dart';
import '../widget/widgetbody/story.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarApp(),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SizedBox(height: 10,),

              SearchTextField(hinttext: 'Search',),

              const SizedBox(height: 15,),

              SizedBox(
                height: 110,
                child: ListView.builder(
                    itemBuilder: (context, index) => StoryApp(
                        image: messageList[index]["image"],
                        name: messageList[index]["name"],
                    ),
                    itemCount: storyList.length,
                    scrollDirection: Axis.horizontal,

                ),
              ),

             const SizedBox(height: 20,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                 ListView.builder(
                     itemBuilder: (context, index) =>Message(
                         name: messageList[index]["name"],
                         messageText:  messageList[index]["messageText"],
                         time:  messageList[index]["time"],
                         image:  messageList[index]["image"],
                     ) ,
                     itemCount:messageList.length ,
                     shrinkWrap: true,
                   physics: const NeverScrollableScrollPhysics(),
                 )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
