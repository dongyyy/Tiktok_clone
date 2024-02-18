
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/sizes.dart';

class FormButton extends StatelessWidget {
  final bool disabled;
  final String buttonText;

  const FormButton({
    super.key,
    required this.disabled,
    this.buttonText = 'Next',
  });

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1,
      child: AnimatedContainer(
        padding: const EdgeInsets.symmetric(
          vertical: Sizes.size16,
        ),
        decoration: BoxDecoration(
          color: disabled
              ? Colors.grey.shade300
              : Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(
            Sizes.size16,
          ),
        ),
        duration: const Duration(milliseconds: 500),
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 500),
          style: TextStyle(
            color:
            disabled ? Colors.grey.shade400 : Colors.white,
            fontWeight: FontWeight.w600,
          ),
          child: Text(
            buttonText,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}