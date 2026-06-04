import 'package:flutter/material.dart';
import 'package:imc_calculator/components/gender_selector.dart';
import 'package:imc_calculator/components/height_selector.dart';
import 'package:imc_calculator/components/number_selector.dart';
import 'package:imc_calculator/core/app_colors.dart';

class ImcHomeScreen extends StatefulWidget {
  const ImcHomeScreen({super.key});

  @override
  State<ImcHomeScreen> createState() => _ImcHomeScreenState();
}

class _ImcHomeScreenState extends State<ImcHomeScreen> {
  int selectedAge = 20;
  int selectedWeight = 80;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GenderSelector(),
        HeightSelector(),
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: NumberSelector(
                    title: "Peso",
                    value: selectedWeight.toDouble(),
                    onIncrement: () {
                      setState(() {
                        selectedWeight++;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: NumberSelector(
                    title: "Edad",
                    value: selectedAge.toDouble(),
                    onIncrement: () {
                      setState(() {
                        selectedAge++;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          // SafeArea respeta la barra de navegación, lo ideal sería envolver todo en un SafeArea
          child: SafeArea(
            child: SizedBox(
              height: 60,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // print("holaaa");
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(AppColors.primary),
                ),
                child: Text(
                  "Calcular",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                )
              ),
            ),
          ),
        ),
      ],
    );
  }
}
