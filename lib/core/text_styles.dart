import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';

class TextStyles {
  static const TextStyle bodyText = TextStyle(fontSize: 18);
  static TextStyle genderText(String? isSelected, String gender) {
    return bodyText.copyWith(color: selectColors(isSelected, gender));
  }
}

Color selectColors(String? isSelected, String? gender) {
  if (isSelected == "HOMBRE" && gender == "HOMBRE") {
    return AppColors.backgroundComponent;
  } else if (isSelected == "HOMBRE" && gender == "MUJER") {
    return AppColors.backgroundComponentSelected;
  } else if (isSelected == "MUJER" && gender == "MUJER") {
    return AppColors.backgroundComponent;
  } else if (isSelected == "MUJER" && gender == "HOMBRE") {
    return AppColors.backgroundComponentSelected;
  }
  return AppColors.backgroundComponent;
}
