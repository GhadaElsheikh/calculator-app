import 'package:calculator_app/providers/input_provider.dart';
import 'package:calculator_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CustomButton> buttonnsList = [
      CustomButton(
          text: 'm+',
          color: Color(0xff628C88),
          onPressed: () {
            context.read<InputProvider>().mPlus();
          }),
      CustomButton(
          text: 'm-',
          color: Color(0xff628C88),
          onPressed: () {
            context.read<InputProvider>().mMinus();
          }),
      CustomButton(
          text: 'mr\nmc',
          color: Color(0xff628C88),
          onPressed: () {
            context.read<InputProvider>().mrMc();
          }),
      CustomButton(
        text: '÷',
        color: Color(0xff322E25),
      ),
      CustomButton(
        text: '7',
      ),
      CustomButton(
        text: '8',
      ),
      CustomButton(
        text: '9',
      ),
      CustomButton(
        text: '×',
        color: Color(0xff322E25),
      ),
      CustomButton(
        text: '4',
      ),
      CustomButton(
        text: '5',
      ),
      CustomButton(
        text: '6',
      ),
      CustomButton(
        text: '-',
        color: Color(0xff322E25),
      ),
      CustomButton(
        text: '1',
      ),
      CustomButton(
        text: '2',
      ),
      CustomButton(
        text: '3',
      ),
      CustomButton(
        text: '+',
        color: Color(0xff322E25),
      ),
      CustomButton(
        text: '0',
      ),
      CustomButton(
        text: '.',
        color: Color(0xff322E25),
      ),
      CustomButton(
        text: 'c',
        color: Color(0xff322E25),
        onPressed: () {
          context.read<InputProvider>().clear();
        },
      ),
      CustomButton(
        text: '=',
        color: Color(0xffF7D17C),
        textColor: Colors.black,
        onPressed: () {
          context.read<InputProvider>().calculate();
        },
      ),
    ];
    return GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: buttonnsList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemBuilder: (context, idx) {
          return buttonnsList[idx];
        });
  }
}
