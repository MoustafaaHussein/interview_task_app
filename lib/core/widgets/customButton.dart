import 'package:flutter/material.dart';

class CusttomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;

  const CusttomButton({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(text, textAlign: TextAlign.center),
      ),
    );
  }
}
