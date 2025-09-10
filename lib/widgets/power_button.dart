import 'package:flutter/material.dart';

class PowerButton extends StatelessWidget {
  const PowerButton(
      {super.key, required this.onPressed, required this.buttonColor});

  final void Function() onPressed;
  final Color buttonColor;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      width: w * 0.0693,
      height: h * 0.0320,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(77),
            blurRadius: 1,
            spreadRadius: 1,
          )
        ],
        shape: BoxShape.circle,
        gradient: LinearGradient(
            colors: [
              Color(0xFFFFFFFF),
              buttonColor,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.0, 0.35]),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(Colors.transparent),
        ),
        child: Text(''),
      ),
    );
  }
}
