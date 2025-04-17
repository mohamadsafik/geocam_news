import 'package:flutter/material.dart';
import 'package:rs_ui/themes/themes.dart';

class UnknownPage extends StatelessWidget {
  const UnknownPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          '404 Halaman Tidak Ditemukan',
          style: AppFont.largeBold(context),
        ),
      ),
    );
  }
}
