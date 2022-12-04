import 'package:flutter/material.dart';
import 'package:going_home_app/common/color.dart';

class WidelyButton extends StatelessWidget {
  const WidelyButton({
    Key? key,
    required this.label,
    this.onPressed,
    this.primary,
    this.backgroundColor,
    this.borderSide,
    this.textStyle,
    this.weight,
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
      width: weight ?? double.infinity,
      height: height,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          foregroundColor: primary ?? kWhite,
          backgroundColor: backgroundColor ?? kPrimaryColor,
          side: borderSide ?? BorderSide.none,
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
