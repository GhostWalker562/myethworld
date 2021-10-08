// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../file_upload/views/views.dart' as _i6;
import '../home/home.dart' as _i3;
import '../nft_editor/nft_editor.dart' as _i7;
import '../snap_swap/snap_swap.dart' as _i5;
import '../upgrade/upgrade.dart' as _i8;
import 'router.dart' as _i4;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i1.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.HomePage(),
          transitionsBuilder: _i4.RouterAnimations.transitionBuilder,
          durationInMilliseconds: 1000,
          opaque: true,
          barrierDismissible: false);
    },
    SnapSwapRoute.name: (routeData) {
      return _i1.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.SnapSwapPage(),
          transitionsBuilder: _i4.RouterAnimations.snapSwapBuilder,
          durationInMilliseconds: 1000,
          reverseDurationInMilliseconds: 1000,
          opaque: true,
          barrierDismissible: false);
    },
    FileUploadRoute.name: (routeData) {
      return _i1.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i6.FileUploadPage(),
          transitionsBuilder: _i4.RouterAnimations.fileUploadBuilder,
          durationInMilliseconds: 1000,
          reverseDurationInMilliseconds: 1000,
          opaque: true,
          barrierDismissible: false);
    },
    NftEditorRoute.name: (routeData) {
      return _i1.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i7.NftEditorPage(),
          transitionsBuilder: _i4.RouterAnimations.nftEditorPage,
          durationInMilliseconds: 1000,
          reverseDurationInMilliseconds: 1000,
          opaque: true,
          barrierDismissible: false);
    },
    UpgradeRoute.name: (routeData) {
      return _i1.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i8.UpgradePage(),
          transitionsBuilder: _i4.RouterAnimations.upgradeBuilder,
          durationInMilliseconds: 1000,
          reverseDurationInMilliseconds: 1000,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeRoute.name, path: '/'),
        _i1.RouteConfig(SnapSwapRoute.name, path: '/snap-swap'),
        _i1.RouteConfig(FileUploadRoute.name, path: '/file-upload'),
        _i1.RouteConfig(NftEditorRoute.name, path: '/nft-editor'),
        _i1.RouteConfig(UpgradeRoute.name, path: '/upgrade'),
        _i1.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
      ];
}

class HomeRoute extends _i1.PageRouteInfo<void> {
  const HomeRoute() : super(name, path: '/');

  static const String name = 'HomeRoute';
}

class SnapSwapRoute extends _i1.PageRouteInfo<void> {
  const SnapSwapRoute() : super(name, path: '/snap-swap');

  static const String name = 'SnapSwapRoute';
}

class FileUploadRoute extends _i1.PageRouteInfo<void> {
  const FileUploadRoute() : super(name, path: '/file-upload');

  static const String name = 'FileUploadRoute';
}

class NftEditorRoute extends _i1.PageRouteInfo<void> {
  const NftEditorRoute() : super(name, path: '/nft-editor');

  static const String name = 'NftEditorRoute';
}

class UpgradeRoute extends _i1.PageRouteInfo<void> {
  const UpgradeRoute() : super(name, path: '/upgrade');

  static const String name = 'UpgradeRoute';
}
