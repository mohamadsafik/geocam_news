/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/app_registration_24dp_E3E3E3_FILL0_wght400_GRAD0_opsz24.svg
  SvgGenImage
  get appRegistration24dpE3E3E3FILL0Wght400GRAD0Opsz24 => const SvgGenImage(
    'assets/icons/app_registration_24dp_E3E3E3_FILL0_wght400_GRAD0_opsz24.svg',
  );

  /// File path: assets/icons/application-card.svg
  SvgGenImage get applicationCard =>
      const SvgGenImage('assets/icons/application-card.svg');

  /// File path: assets/icons/balance.svg
  SvgGenImage get balance => const SvgGenImage('assets/icons/balance.svg');

  /// File path: assets/icons/bed.svg
  SvgGenImage get bed => const SvgGenImage('assets/icons/bed.svg');

  /// File path: assets/icons/local_hospital_24dp_E3E3E3_FILL0_wght400_GRAD0_opsz24.svg
  SvgGenImage
  get localHospital24dpE3E3E3FILL0Wght400GRAD0Opsz24 => const SvgGenImage(
    'assets/icons/local_hospital_24dp_E3E3E3_FILL0_wght400_GRAD0_opsz24.svg',
  );

  /// File path: assets/icons/medical_information_24dp_E3E3E3_FILL0_wght400_GRAD0_opsz24.svg
  SvgGenImage
  get medicalInformation24dpE3E3E3FILL0Wght400GRAD0Opsz24 => const SvgGenImage(
    'assets/icons/medical_information_24dp_E3E3E3_FILL0_wght400_GRAD0_opsz24.svg',
  );

  /// File path: assets/icons/menu.svg
  SvgGenImage get menu => const SvgGenImage('assets/icons/menu.svg');

  /// File path: assets/icons/pos-cafe.svg
  SvgGenImage get posCafe => const SvgGenImage('assets/icons/pos-cafe.svg');

  /// File path: assets/icons/rawat_inap.svg
  SvgGenImage get rawatInap => const SvgGenImage('assets/icons/rawat_inap.svg');

  /// File path: assets/icons/stethoscope_24dp_E3E3E3_FILL0_wght400_GRAD0_opsz24.svg
  SvgGenImage get stethoscope24dpE3E3E3FILL0Wght400GRAD0Opsz24 =>
      const SvgGenImage(
        'assets/icons/stethoscope_24dp_E3E3E3_FILL0_wght400_GRAD0_opsz24.svg',
      );

  /// File path: assets/icons/voucher.svg
  SvgGenImage get voucher => const SvgGenImage('assets/icons/voucher.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
    appRegistration24dpE3E3E3FILL0Wght400GRAD0Opsz24,
    applicationCard,
    balance,
    bed,
    localHospital24dpE3E3E3FILL0Wght400GRAD0Opsz24,
    medicalInformation24dpE3E3E3FILL0Wght400GRAD0Opsz24,
    menu,
    posCafe,
    rawatInap,
    stethoscope24dpE3E3E3FILL0Wght400GRAD0Opsz24,
    voucher,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/doctorA.jpg
  AssetGenImage get doctorA => const AssetGenImage('assets/images/doctorA.jpg');

  /// File path: assets/images/doctorB.jpeg
  AssetGenImage get doctorB =>
      const AssetGenImage('assets/images/doctorB.jpeg');

  /// File path: assets/images/doctorC.jpeg
  AssetGenImage get doctorC =>
      const AssetGenImage('assets/images/doctorC.jpeg');

  /// File path: assets/images/gigi.jpg
  AssetGenImage get gigi => const AssetGenImage('assets/images/gigi.jpg');

  /// File path: assets/images/gula.jpg
  AssetGenImage get gula => const AssetGenImage('assets/images/gula.jpg');

  /// File path: assets/images/hamil.jpg
  AssetGenImage get hamil => const AssetGenImage('assets/images/hamil.jpg');

  /// File path: assets/images/jantung.jpg
  AssetGenImage get jantung => const AssetGenImage('assets/images/jantung.jpg');

  /// File path: assets/images/logo-rsui.png
  AssetGenImage get logoRsui =>
      const AssetGenImage('assets/images/logo-rsui.png');

  /// File path: assets/images/poli_anak.jpg
  AssetGenImage get poliAnak =>
      const AssetGenImage('assets/images/poli_anak.jpg');

  /// File path: assets/images/poli_gigi.jpeg
  AssetGenImage get poliGigi =>
      const AssetGenImage('assets/images/poli_gigi.jpeg');

  /// File path: assets/images/poli_mata.jpg
  AssetGenImage get poliMata =>
      const AssetGenImage('assets/images/poli_mata.jpg');

  /// File path: assets/images/rs_logo.jpg
  AssetGenImage get rsLogo => const AssetGenImage('assets/images/rs_logo.jpg');

  /// File path: assets/images/sakitgigi.jpg
  AssetGenImage get sakitgigi =>
      const AssetGenImage('assets/images/sakitgigi.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [
    doctorA,
    doctorB,
    doctorC,
    gigi,
    gula,
    hamil,
    jantung,
    logoRsui,
    poliAnak,
    poliGigi,
    poliMata,
    rsLogo,
    sakitgigi,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter:
          colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
