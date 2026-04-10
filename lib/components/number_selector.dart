import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';

class NumberSelector extends StatefulWidget {
  final String title;
  final double value;

  const NumberSelector({super.key, required this.title, required this.value});

  @override
  State<NumberSelector> createState() => _NumberSelectorState();
}

class _NumberSelectorState extends State<NumberSelector> {
  late double _currentValue;
  @override
  void initState() {
    super.initState();
    _currentValue = widget.value;
  }

  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.backgroundComponent,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              widget.title.toUpperCase(),
              style: TextStyle(color: AppColors.backgroundComponentSelected),
            ),
            Text(
              _currentValue.toStringAsFixed(0),
              style: TextStyle(fontSize: 36, color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (_currentValue < 500) {
                          _currentValue = _currentValue + 1;
                        }
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: AppColors.primary,
                      ),
                      child: Icon(Icons.add, size: 36),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (_currentValue > 0) {
                          _currentValue = _currentValue - 1;
                        }
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: AppColors.primary,
                      ),
                      child: Icon(Icons.remove, size: 36),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
