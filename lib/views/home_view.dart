import 'package:calculator_app/widgets/calculator_display.dart';
import 'package:calculator_app/widgets/custom_grid_view.dart';
import 'package:calculator_app/widgets/power_controls.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff485662),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: CalculatorDisplay()),
            ),
            Expanded(
              flex: 2,
              child: Align(
                  alignment: FractionalOffset(0.15, 0.0),
                  child: PowerControls()),
            ),
            Expanded(
              flex: 6,
              child: CustomGridView(),
            )
          ],
        ),
      ),
    );
  }
}
