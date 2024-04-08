import 'package:flutter/material.dart';
import 'package:messenger/core/colorcore.dart';
import 'package:messenger/widget/widgetapppar/stackinapppar.dart';
import 'package:messenger/widget/widgetapppar/titleapppar.dart';
import 'actionsapppar.dart';

AppBar AppBarApp(){
  return AppBar(
    backgroundColor: ColorApp.whiteColor,
    elevation: 0,
    leading:  const Padding(
        padding: EdgeInsets.only(
          top: 8,
          left: 8,
        ),
        child: StackAppPar(),
    ),
    title: const TitleAppBar(),
    actions: const [
      ActionAppBar(),
    ],
  );
}