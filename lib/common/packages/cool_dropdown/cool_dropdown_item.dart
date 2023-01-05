import 'package:flutter/material.dart';

class CoolDropdownItem {
  final String? value;
  final String? label;
  final Widget? icon;
  final Widget? selectedIcon;

  CoolDropdownItem({
    this.value = '',
    this.label = '',
    this.icon = const SizedBox.shrink(),
    this.selectedIcon = const SizedBox.shrink(),
  });

  @override
  // ignore: hash_and_equals
  // https://zenn.dev/iwaku/articles/2020-12-18-iwaku
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CoolDropdownItem &&
          runtimeType == other.runtimeType &&
          value == other.value &&
          label == other.label &&
          icon == other.icon &&
          selectedIcon == other.selectedIcon;
}
