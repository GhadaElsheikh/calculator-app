import 'package:calculator_app/providers/input_provider.dart';
import 'package:calculator_app/widgets/power_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PowerPanel extends StatelessWidget {
  const PowerPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(
          flex: 2,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            PowerButton(
              // enable button
              buttonColor: Color(0xff35724E),
              onPressed: () {
                context.read<InputProvider>().enable();
              },
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.15,
            ),
            PowerButton(
              // disable button
              buttonColor: Color(0xFFFF0000),
              onPressed: () {
                context.read<InputProvider>().disable();
              },
            ),
          ],
        ),
        Spacer(
          flex: 1,
        ),
        SizedBox(
            width: MediaQuery.of(context).size.width * 0.255,
            child: Image.asset(
              'assets/images/design.png',
              fit: BoxFit.contain,
            )),
        Spacer(
          flex: 3,
        ),
      ],
    );
  }
}
