import 'package:flutter/material.dart';
import 'package:messenger/ui/homepage.dart';

void main(){
  runApp(const MyAPP());
}
class MyAPP extends StatelessWidget{
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }

}