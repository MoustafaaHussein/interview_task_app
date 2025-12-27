import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.onSaved, this.inputType});

  final void Function(String?)? onSaved;
  final TextInputType? inputType;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          // side: const BorderSide(
          //   width: 1,
          //   strokeAlign: BorderSide.strokeAlignCenter,
          //   color: Color(0xFFE6E9E9),
          // ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: TextFormField(
        keyboardType: inputType,
        onSaved: onSaved,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'This Field is Required';
          } else {
            return null;
          }
        },
      ),
    );
  }
}
