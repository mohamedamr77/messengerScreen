import 'package:flutter/cupertino.dart';

import '../../core/colorcore.dart';

class TitleAppBar extends StatelessWidget {
  const TitleAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("Chats",
      style: TextStyle(
        color: ColorApp.blackColor,
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
