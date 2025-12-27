import 'package:flutter/material.dart';

class PageviewItems extends StatelessWidget {
  const PageviewItems({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subTitle,
  });
  final String imagePath, title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(imagePath, fit: BoxFit.contain),
        ),
        SizedBox(height: 30),
        Text(title, style: Theme.of(context).textTheme.bodyLarge),
        SizedBox(height: 10),
        Text(
          subTitle,
          maxLines: 3,
          softWrap: true,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
