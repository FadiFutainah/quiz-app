import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, this.title = 'QuizApp', this.leading});

  final String title;
  final Widget? leading;

  @override
  Size get preferredSize => const Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      leading: leading,
      backgroundColor: Theme.of(context).primaryColor,
      centerTitle: true,
    );
  }
}
