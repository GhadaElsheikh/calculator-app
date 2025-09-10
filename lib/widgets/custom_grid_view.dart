import 'package:calculator_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  final List<CustomButton> buttonnsList = const [
    CustomButton(
      text: 'm+',
      color: Color(0xff628C88),
    ),
    CustomButton(
      text: 'm-',
      color: Color(0xff628C88),
    ),
    CustomButton(
      text: 'mr\nmc',
      color: Color(0xff628C88),
    ),
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
    ),
    CustomButton(
      text: '=',
      color: Color(0xffF7D17C),
      textColor: Colors.black,
    ),
  ];

  @override
  Widget build(BuildContext context) {
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
