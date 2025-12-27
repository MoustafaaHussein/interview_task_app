import 'package:flutter/material.dart';

class CustomPasswordTextFieldChecking extends StatefulWidget {
  const CustomPasswordTextFieldChecking({
    super.key,
    required this.onSaved,
    this.hintText,
  });
  final void Function(String?)? onSaved;
  final String? hintText;
  @override
  State<CustomPasswordTextFieldChecking> createState() =>
      _CustomPasswordTextFieldCheckingState();
}

class _CustomPasswordTextFieldCheckingState
    extends State<CustomPasswordTextFieldChecking> {
  bool isPressed = false;

  _CustomPasswordTextFieldCheckingState();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'This field is required';
          } else if (!isPasswordValid(value)) {
            return 'Password must be at least 8 characters,\ninclude upper & lower case, number, and special char.';
          } else {
            return null;
          }
        },
        onSaved: widget.onSaved,
        obscureText: !isPressed,

        decoration: InputDecoration(
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                isPressed = !isPressed;
              });
            },
            child: isPressed == false
                ? const Icon(Icons.remove_red_eye_outlined)
                : const Icon(Icons.remove_red_eye),
          ),
          hintText: widget.hintText,
        ),
      ),
    );
  }

  bool isPasswordValid(String password) {
    final regex = RegExp(
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#\$&*~]).{8,}$',
    );
    return regex.hasMatch(password);
  }
}
