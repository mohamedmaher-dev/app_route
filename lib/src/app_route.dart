import 'package:flutter/material.dart';

enum Pages { homePage, profilePage, settingsPage }

abstract class AppRoute {
  static const Widget initialRoute = Text("Home Page");

  static MaterialPageRoute<dynamic> _materialPageRoute({
    required Pages page,
  }) {
    return MaterialPageRoute(
      builder: (context) {
        switch (page) {
          case Pages.homePage:
            return const Text("Home Page");
          case Pages.profilePage:
            return const Text("Profile Page");
          case Pages.settingsPage:
            return const Text("Settings Page");
        }
      },
    );
  }

  static pop({
    required BuildContext context,
  }) {
    Navigator.pop(context);
  }

  static push({
    required BuildContext context,
    required Pages page,
    Object? arguments,
  }) {
    Navigator.push(
      context,
      _materialPageRoute(page: page),
    );
  }

  static pushReplacement({
    required BuildContext context,
    required Pages page,
    Object? arguments,
  }) {
    Navigator.pushReplacement(
      context,
      _materialPageRoute(page: page),
    );
  }

  static pushAndRemoveUntil({
    required BuildContext context,
    required Pages page,
    Object? arguments,
  }) {
    Navigator.pushAndRemoveUntil(
      context,
      _materialPageRoute(page: page),
      (route) => false,
    );
  }
}
