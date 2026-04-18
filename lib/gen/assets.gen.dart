// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/Bookmark_icon.png
  AssetGenImage get bookmarkIcon =>
      const AssetGenImage('assets/icons/Bookmark_icon.png');

  /// File path: assets/icons/Category_icon.png
  AssetGenImage get categoryIcon =>
      const AssetGenImage('assets/icons/Category_icon.png');

  /// File path: assets/icons/Home_icon.png
  AssetGenImage get homeIcon =>
      const AssetGenImage('assets/icons/Home_icon.png');

  /// File path: assets/icons/Profile_icon.png
  AssetGenImage get profileIcon =>
      const AssetGenImage('assets/icons/Profile_icon.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    bookmarkIcon,
    categoryIcon,
    homeIcon,
    profileIcon,
  ];
}

class $AssetsImageGen {
  const $AssetsImageGen();

  /// File path: assets/image/cib_apple.png
  AssetGenImage get cibApple =>
      const AssetGenImage('assets/image/cib_apple.png');

  /// File path: assets/image/google_ic.png
  AssetGenImage get googleIc =>
      const AssetGenImage('assets/image/google_ic.png');

  /// File path: assets/image/splash_android12.png
  AssetGenImage get splashAndroid12 =>
      const AssetGenImage('assets/image/splash_android12.png');

  /// File path: assets/image/splash_screen.png
  AssetGenImage get splashScreen =>
      const AssetGenImage('assets/image/splash_screen.png');

  /// File path: assets/image/welcome_screen.png
  AssetGenImage get welcomeScreen =>
      const AssetGenImage('assets/image/welcome_screen.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    cibApple,
    googleIc,
    splashAndroid12,
    splashScreen,
    welcomeScreen,
  ];
}

class $AssetsTranslationsGen {
  const $AssetsTranslationsGen();

  /// File path: assets/translations/ar.json
  String get ar => 'assets/translations/ar.json';

  /// File path: assets/translations/en.json
  String get en => 'assets/translations/en.json';

  /// List of all assets
  List<String> get values => [ar, en];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImageGen image = $AssetsImageGen();
  static const $AssetsTranslationsGen translations = $AssetsTranslationsGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

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

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
