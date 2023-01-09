import 'package:flutter/material.dart';
import 'package:going_home_app/common/color.dart';

class WidelyButton extends StatelessWidget {
  const WidelyButton({
    Key? key,
    required this.label,
    this.onPressed,
    this.primary = kWhite,
    this.backgroundColor = kPrimaryColor,
    this.borderSide = BorderSide.none,
    this.textStyle,
    this.weight = double.infinity,
    this.height,
  }) : super(key: key);

  final String label;
  final VoidCallback? onPressed;
  final Color? primary;
  final Color? backgroundColor;
  final BorderSide? borderSide;
  final TextStyle? textStyle;
  final double? height;
  final double? weight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: weight,
      height: height,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          foregroundColor: primary,
          backgroundColor: backgroundColor,
          side: borderSide,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          label,
          style: (textStyle == null)
              ? Theme.of(context).textTheme.subtitle1!.copyWith(color: kWhite)
              : textStyle,
        ),
      ),
    );
  }
}
