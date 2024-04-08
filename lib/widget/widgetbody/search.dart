import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  String hinttext;
   SearchTextField({super.key,required this.hinttext});

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
        hintText: hinttext,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        prefixIcon: const Icon(Icons.search),
      ),
    );

  }
}
