import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.color = const Color(0xff18171E),
    this.onPressed,
    this.textColor = Colors.white,
  });

  final String text;
  final Color color;
  final void Function()? onPressed;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.16,
      height: MediaQuery.of(context).size.height * 0.0702,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color,
            Color.lerp(color, Colors.white, 0.35)!,
            Colors.white.withAlpha(100),
          ],
          stops: [0.6, 0.95, 1.0],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
        shape: BoxShape.circle,
      ),
      child: ElevatedButton(
        onPressed: onPressed ?? () {},
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(Colors.transparent),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
