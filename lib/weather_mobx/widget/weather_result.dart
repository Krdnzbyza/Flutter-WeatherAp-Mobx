import 'package:flutter/material.dart';

class WeatherTextField extends StatelessWidget {
  final VoidCallback onPressed;
  final TextEditingController controller;

  const WeatherTextField({
    Key? key,
    required this.onPressed,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        hintText: 'Enter a city',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        suffixIcon: IconButton(
          onPressed: () => onPressed(),
          icon: Icon(Icons.search),
        ),
      ),
    );
  }
}
