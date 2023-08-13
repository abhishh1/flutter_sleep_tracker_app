import 'package:flutter/material.dart';
import '../../app/shared/colors.dart';
import 'custom_app_bar.dart';

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

class ScaffoldShell extends StatelessWidget {
  final bool needPadding;
  final Widget widget;
  final Widget? bottomAppBar;
  final bool? positionIsCenter;
  final Widget? fab;
  final Function? onBackTap;
  final String? appKey;
  final List<Widget>? actions;
  final Color? backColor;
  final bool? showBackButton;
  final bool? needAppBar;
  const ScaffoldShell(
      {super.key,
      this.needPadding = true,
      this.bottomAppBar,
      this.fab,
      this.onBackTap,
      this.needAppBar,
      this.positionIsCenter,
      this.showBackButton,
      this.backColor,
      this.actions,
      this.appKey,
      required this.widget});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: SafeArea(
          child: Scaffold(
            floatingActionButtonLocation: positionIsCenter != null
                ? positionIsCenter!
                    ? FloatingActionButtonLocation.centerFloat
                    : FloatingActionButtonLocation.endDocked
                : null,
            resizeToAvoidBottomInset: false,
            floatingActionButton: fab,
            bottomNavigationBar: bottomAppBar != null
                ? BottomAppBar(color: Colors.transparent, child: bottomAppBar)
                : const SizedBox(height: 0, width: 0),
            backgroundColor: backColor ?? KConstantColors.bgColorFaint,
            body: Padding(
              padding: EdgeInsets.all(needPadding ? 8 : 0.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (needAppBar == null)
                      CustomAppBar(
                          showBackButton: showBackButton,
                          trKey: appKey ?? "",
                          action: actions,
                          onBackTap: onBackTap),
                    widget
                  ]),
            ),
          ),
        ));
  }
}

class ScaffoldShellForLists extends StatelessWidget {
  final bool needPadding;
  final List<Widget> widgets;
  final Widget? bottomAppBar;
  final bool? fabPositionIsCenter;
  final Widget? fab;
  final String? appKey;
  final Color? defBgColor;
  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;
  const ScaffoldShellForLists(
      {super.key,
      this.needPadding = true,
      this.bottomAppBar,
      this.fab,
      this.fabPositionIsCenter,
      this.appKey,
      this.defBgColor,
      this.mainAxisAlignment,
      this.crossAxisAlignment,
      required this.widgets});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Container(
          color: defBgColor ?? KConstantColors.bgColor,
          child: SafeArea(
              bottom: false,
              child: Scaffold(
                  floatingActionButtonLocation: fabPositionIsCenter ?? false
                      ? FloatingActionButtonLocation.centerFloat
                      : FloatingActionButtonLocation.endDocked,
                  floatingActionButton: fab,
                  bottomNavigationBar: bottomAppBar != null
                      ? BottomAppBar(
                          color: Colors.transparent, child: bottomAppBar)
                      : const SizedBox(height: 0, width: 0),
                  backgroundColor: defBgColor ?? KConstantColors.bgColor,
                  body: Padding(
                    padding: EdgeInsets.all(needPadding ? 8 : 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                          mainAxisAlignment:
                              mainAxisAlignment ?? MainAxisAlignment.start,
                          crossAxisAlignment:
                              crossAxisAlignment ?? CrossAxisAlignment.start,
                          children: widgets),
                    ),
                  )))),
    );
  }
}
