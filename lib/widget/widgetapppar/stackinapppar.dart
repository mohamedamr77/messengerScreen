import 'package:flutter/material.dart';
import '../../core/colorcore.dart';
import '../../core/imagecore.dart';
class StackAppPar extends StatelessWidget{
  const StackAppPar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.topRight,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(ImageApp.moImage),
        ),
        CircleAvatar(
          radius: 7,
          backgroundColor: ColorApp.whiteColor,
        ),
        CircleAvatar(
          radius: 6,
          backgroundColor: Colors.green,
        ),
      ],
    );
  }

}