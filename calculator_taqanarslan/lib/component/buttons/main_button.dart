
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String element;

  MainButton({super.key, required this.element});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width / 8))),
      child: Center(
        child: Text(
          element,
          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
