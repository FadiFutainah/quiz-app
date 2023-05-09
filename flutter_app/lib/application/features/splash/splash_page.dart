import 'package:flutter/material.dart';
import 'package:flutter_app/application/widgets/loading_widget.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: LoadingWidget());
  }
}
