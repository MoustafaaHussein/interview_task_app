import 'package:flutter/material.dart';

class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({super.key, required this.onSaved});
  final void Function(String?)? onSaved;
  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool isPressed = false;

  _CustomPasswordFieldState();
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
            return 'This Field is Required';
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
        ),
      ),
    );
  }
}
