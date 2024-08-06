import 'package:flutter/material.dart';

class MywalletButton extends StatelessWidget {
  const MywalletButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration( color: Colors.white,borderRadius: BorderRadius.circular(200)),
         child:
      Center(child: IconButton(icon:const Icon(Icons.arrow_forward_rounded),color: Colors.black,onPressed: (){},),)
    );
  }
}