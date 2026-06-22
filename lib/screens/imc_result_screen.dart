import 'dart:math';

import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';

class ImcResultScreen extends StatelessWidget {
  final double height;
  final double weight;
  const ImcResultScreen({
    super.key,
    required this.height,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: toolbarResult(),
      body: bodyResult(),
    );
  }

  SizedBox bodyResult() {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "TU IMC ES: ${(weight / pow(height, 2) * 10000).toStringAsFixed(2)}",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
          Text(
            "Tu altura es $height cm",
            style: TextStyle(
              color: Colors.white,
              decoration: TextDecoration.none,
              fontSize: 24,
            ),
          ),
          Text(
            "Tu peso es $weight kg",
            style: TextStyle(
              color: Colors.white,
              decoration: TextDecoration.none,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }

  AppBar toolbarResult() {
    return AppBar(
      title: Text("Resultados", style: TextStyle(color: Colors.white)),
      backgroundColor: AppColors.primary,
      iconTheme: IconThemeData(
        color: Colors.white
      ),
    );
  }
}
