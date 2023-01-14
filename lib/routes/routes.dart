import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_car_in_phone/splash.dart';
import 'package:my_car_in_phone/views/home.dart';
import 'package:my_car_in_phone/views/test.dart';

// Route Enum
enum RouteEnum { splash, home, menu, test }

extension RouteEnumExtension on RouteEnum {
  String get path => toString();
}

extension RouteEnumParser on String? {
  RouteEnum get findEnum =>
      RouteEnum.values.firstWhere((RouteEnum e) => e.toString() == this);
}

/// Route Enum Path 에 따라 이동할 페이지 분기
Widget getRouteWidget(RouteEnum route) {
  switch (route) {
    case RouteEnum.splash:
      return SplashPage();
    case RouteEnum.home:
      return HomePage();
    case RouteEnum.menu:
      return Container();
    case RouteEnum.test:
      return TestPage();
  }
}

/// 트랜지션 + 위젯 결합하여 최종 라우트 생성
PageRoute packRoute(RouteSettings settings) {
  try {
    final RouteEnum route = settings.name.findEnum;
    // Args는 사용 페이지별로 TypeCasting 필요함.
    final Object? args = settings.arguments;

    log("name :: $route");
    log("args :: $args");
    switch (route) {
      case RouteEnum.home:
        return FadeOutRoute(page: getRouteWidget(route), name: route.path);
      default:
        return SlideRightRoute(page: getRouteWidget(route), name: route.path);
    }
  } on Exception catch (e) {
    log("settings.name 이 없는 경우 :: $e");
    return FadeOutRoute(page: TestPage(), name: "");
  }
}

/// 메인함수
PageRoute myRoute(RouteSettings settings) {
  final String? name = settings.name;

  // 아무 데이터도 없는 경우는 없다. 사실 에러 페이지로 가야 함.
  if (name == null || name == "") {
    return MaterialPageRoute(builder: (_) => Container());
  }

  return packRoute(settings);
}

/// ******************
/// 트랜지션 모음
/// ******************
class SlideRightRoute extends PageRouteBuilder {
  final Widget page;
  final String name;
  SlideRightRoute({
    required this.page,
    required this.name,
  }) : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            var begin = const Offset(1.0, 0.0);
            var end = Offset.zero;
            var curve = Curves.ease;
            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
          settings: RouteSettings(
            name: name,
          ),
        );
}

class FadeOutRoute extends PageRouteBuilder {
  final Widget page;
  final String name;
  FadeOutRoute({
    required this.page,
    required this.name,
  }) : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
          settings: RouteSettings(
            name: name,
          ),
        );
}

class NoTransitionRoute extends PageRouteBuilder {
  final Widget page;
  final String name;
  NoTransitionRoute({
    required this.page,
    required this.name,
  }) : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionDuration: Duration.zero,
          reverseTransitionDuration: Duration.zero,
          settings: RouteSettings(
            name: name,
          ),
        );
}