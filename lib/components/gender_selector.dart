import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/text_styles.dart';

class GenderSelector extends StatefulWidget {
  const GenderSelector({super.key});

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Male
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedGender = "HOMBRE";
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16,
                top: 16,
                bottom: 16,
                right: 8,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: selectedGender == "HOMBRE"
                      ? AppColors.backgroundComponentSelected
                      : AppColors.backgroundComponent,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/male.png",
                        height: 100,
                        color: selectedGender == "HOMBRE" ? AppColors.backgroundComponent : AppColors.backgroundComponentSelected,
                      ),
                      Text("Male".toUpperCase(), style: TextStyles.genderText(selectedGender, "HOMBRE")),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        // Female
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedGender = "MUJER";
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(
                left: 8,
                top: 16,
                bottom: 16,
                right: 16,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: selectedGender == "MUJER"
                      ? AppColors.backgroundComponentSelected
                      : AppColors.backgroundComponent,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/female.png",
                        height: 100,
                        color: selectedGender == "MUJER" ? AppColors.backgroundComponent : AppColors.backgroundComponentSelected,
                      ),
                      Text("Female".toUpperCase(), style: TextStyles.genderText(selectedGender, "MUJER")),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
