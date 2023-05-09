import 'package:flutter/material.dart';
import 'package:flutter_app/application/models/form_validator.dart';

class InputField extends StatelessWidget {
  final bool isVisible;
  final TextInputType keyboard;
  final void Function(String)? onChanged;
  final VoidCallback? onSuffixIconPressed;
  final IconData? icon;
  final IconData? suffixIcon;
  final bool onFocus;
  final FormValidator formValidator;
  final AutovalidateMode autovalidateMode;
  final double rightPadding;
  final double leftPadding;
  final double topPadding;
  final double bottomPadding;

  const InputField({
    Key? key,
    this.icon,
    this.suffixIcon,
    this.onChanged,
    this.isVisible = true,
    this.onFocus = false,
    this.onSuffixIconPressed,
    this.rightPadding = 16.0,
    this.leftPadding = 16.0,
    this.topPadding = 14.0,
    this.bottomPadding = 0.0,
    this.keyboard = TextInputType.text,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    required this.formValidator,
  }) : super(key: key);

  Widget? _getSuffixIcon(Color color) {
    if (icon == null) return null;

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 8.0, 0),
      child: IconButton(
        onPressed: onSuffixIconPressed,
        icon: Icon(
          suffixIcon,
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.fromLTRB(
          leftPadding, topPadding, rightPadding, bottomPadding),
      child: TextFormField(
        autovalidateMode: autovalidateMode,
        onChanged: onChanged,
        keyboardType: keyboard,
        obscureText: !isVisible,
        controller: formValidator.controller,
        validator: formValidator.vildator,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          hintText: formValidator.hint,
          alignLabelWithHint: true,
          errorStyle: const TextStyle(fontSize: 14),
          prefixIcon: Icon(icon),
          suffixIcon: _getSuffixIcon(theme.primaryColor),
          helperMaxLines: 2,
          errorMaxLines: 2,
        ),
      ),
    );
  }
}
