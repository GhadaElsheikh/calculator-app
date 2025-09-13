import 'package:calculator_app/providers/input_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculatorDisplay extends StatelessWidget {
  const CalculatorDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      width: w * 0.86,
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
            physics: NeverScrollableScrollPhysics(),
            reverse: true,
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                context.watch<InputProvider>().text,
                style: TextStyle(
                  fontFamily: 'digital-7',
                  fontSize: 42,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
