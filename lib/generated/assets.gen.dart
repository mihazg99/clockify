/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/arrow-right.svg
  SvgGenImage get arrowRight => const SvgGenImage('assets/svg/arrow-right.svg');

  /// File path: assets/svg/back-arrow.svg
  SvgGenImage get backArrow => const SvgGenImage('assets/svg/back-arrow.svg');

  /// File path: assets/svg/calendar.svg
  SvgGenImage get calendar => const SvgGenImage('assets/svg/calendar.svg');

  /// File path: assets/svg/edit.svg
  SvgGenImage get edit => const SvgGenImage('assets/svg/edit.svg');

  /// File path: assets/svg/plus.svg
  SvgGenImage get plus => const SvgGenImage('assets/svg/plus.svg');

  /// File path: assets/svg/remove.svg
  SvgGenImage get remove => const SvgGenImage('assets/svg/remove.svg');

  /// List of all assets
  List<SvgGenImage> get values =>
      [arrowRight, backArrow, calendar, edit, plus, remove];
}

class Assets {
  Assets._();

  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
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
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
