import 'package:flutter/material.dart';

class BackButton extends StatelessWidget  {
  const BackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Icon(Icons.arrow_back_ios),
      ),
    );
  }
}

