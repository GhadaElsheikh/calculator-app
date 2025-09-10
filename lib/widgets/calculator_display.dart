import 'package:flutter/material.dart';

class CalculatorDisplay extends StatelessWidget {
  const CalculatorDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      width: w * 0.80,
      height: h * 0.1575,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/calculator_screen.png'),
          fit: BoxFit.contain,
        ),
      ),
      child: Center(
        child: SizedBox(
          width: w * 0.58,
          height: h * 0.065,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            reverse: true,
            child: Text(
              'place holder',
              style: TextStyle(
                fontFamily: 'digital-7',
                fontSize: 42,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
