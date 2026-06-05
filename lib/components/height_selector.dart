import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';

class HeightSelector extends StatefulWidget {
  final ValueChanged<double?> onChanged;
  const HeightSelector({super.key, required this.onChanged});

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
  double alturaInicial = 165;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.backgroundComponent,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "ALTURA",
                style: TextStyle(color: AppColors.backgroundComponentSelected),
              ),
            ),
            Text(
              "${alturaInicial.toStringAsFixed(0)} cm",
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
              ),
            ),
            Slider(
              value: alturaInicial,
              min: 25,
              max: 255,
              divisions: 230,
              label: "Height in cm",
              onChanged: (double newValue) {
                setState(() {
                  alturaInicial = newValue;
                });
                widget.onChanged(alturaInicial);
              },
            ),
          ],
        ),
      ),
    );
  }
}
