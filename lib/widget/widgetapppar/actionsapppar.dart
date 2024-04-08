import 'package:flutter/material.dart';

import '../../core/colorcore.dart';

class ActionAppBar extends StatelessWidget{
  const ActionAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: ColorApp.greyColor,
          child:  IconButton(onPressed: (){}, icon: const Icon(
            Icons.camera_alt_rounded,
            color: Colors.black,
          )),
        ),
        const SizedBox(width: 13,),
        CircleAvatar(
          backgroundColor: ColorApp.greyColor,
          child:  IconButton(onPressed: (){}, icon: const Icon(
            Icons.panorama_sharp,
            color: ColorApp.blackColor,
          )),
        ),
        const SizedBox(width: 10,),
      ],
    );
  }

}