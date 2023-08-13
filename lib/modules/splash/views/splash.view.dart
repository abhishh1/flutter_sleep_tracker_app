// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import '../../../app/shared/colors.dart';
import '../../base/views/base.view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  void initiateCache() {
    Future.delayed(const Duration(seconds: 2), () {
      pushNewScreen(context, screen: const BaseView());
    });
  }

  @override
  void initState() {
    initiateCache();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: KConstantColors.bgColor,
      body: Center(
          child:
              Icon(FontAwesomeIcons.moon, color: KConstantColors.whiteColor)),
    );
  }
}
