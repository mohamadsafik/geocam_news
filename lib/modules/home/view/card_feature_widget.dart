import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rs_ui/engine/engine.dart';

import '../../../themes/themes.dart';

class CardFeature extends StatelessWidget {
  final SvgPicture svg;
  final String title;
  final double? width;
  final void Function()? onTap;

  const CardFeature({
    super.key,
    required this.svg,
    required this.title,
    this.width,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final double effectiveWidth = width ?? (baseWidth - 16 * 2 - 28) / 2;
    return InkWell(
      onTap: onTap,
      child: Container(
        width: effectiveWidth,
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColor.appColor.primary.withOpacity(0.2),
              AppColor.appColor.primary.withOpacity(0.05),
              AppColor.appColor.primary.withOpacity(0.2),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: AppColor.appColor.primary.withOpacity(0.08),
              blurRadius: 8,
              spreadRadius: 1,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 36, child: svg),
            const SizedBox(height: 8),
            Text(
              title,
              textAlign: TextAlign.center,
              style: AppFont.smallPrimary(
                context,
              )?.copyWith(fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
