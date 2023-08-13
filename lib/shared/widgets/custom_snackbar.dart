import 'package:flutter/material.dart';
import '../../app/shared/colors.dart';
import '../../app/shared/dimensions.dart';
import '../../app/shared/text_styles.dart';
import 'custom_buttons.dart';

class CustomSnackBar {
  static errorSnackBar(
      {Function? externalAction,
      String? externalButtonTitle,
      Function? onExternalButtonTapped,
      double? width,
      bool? noButton,
      required BuildContext context,
      required String title}) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        duration: const Duration(seconds: 2),
        backgroundColor: KConstantColors.bgColorFaint,
        behavior: SnackBarBehavior.floating,
        content: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              hSizedBox1,
              const Icon(Icons.error, color: KConstantColors.redColor),
              hSizedBox2,
              Text(title, style: KCustomTextStyle.kMedium(context, 10)),
              const Spacer(),
              if (externalButtonTitle != null)
                TextButton(
                    onPressed: () {
                      if (onExternalButtonTapped != null) {
                        onExternalButtonTapped();
                      }
                    },
                    child: Text(externalButtonTitle,
                        style: KCustomTextStyle.kMedium(context, 10)))
            ],
          ),
        )));
  }

  static positiveSKB(
      {Function? externalAction,
      String? externalButtonTitle,
      double? width,
      bool? noButton,
      required BuildContext context,
      required String title}) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        duration: const Duration(seconds: 2),
        backgroundColor: KConstantColors.bgColorFaint,
        behavior: SnackBarBehavior.floating,
        content: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              hSizedBox1,
              const Icon(Icons.check, color: KConstantColors.greenColor),
              hSizedBox2,
              Text(title, style: KCustomTextStyle.kMedium(context, 10))
            ],
          ),
        )));
  }

  static sWWErrorSnackBar({required BuildContext context}) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        duration: const Duration(seconds: 2),
        backgroundColor: KConstantColors.bgColorFaint,
        behavior: SnackBarBehavior.floating,
        content: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              hSizedBox1,
              const SizedBox(
                  height: 10,
                  width: 10,
                  child: Icon(Icons.error, color: KConstantColors.redColor)),
              hSizedBox2,
              Text("Something went wrong, Try again...",
                  style: KCustomTextStyle.kMedium(context, 10))
            ],
          ),
        )));
  }

  static dynamic loaderSnackbar(
      {required String title, required BuildContext context}) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        duration: const Duration(seconds: 2),
        backgroundColor: KConstantColors.bgColorFaint,
        behavior: SnackBarBehavior.floating,
        content: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              hSizedBox1,
              const SizedBox(
                  height: 10, width: 10, child: CircularProgressIndicator()),
              hSizedBox2,
              Text(title, style: KCustomTextStyle.kMedium(context, 10))
            ],
          ),
        )));
  }

  static dynamic successSnackbar(
      {required String title, required BuildContext context}) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        duration: const Duration(seconds: 2),
        backgroundColor: KConstantColors.bgColorFaint,
        behavior: SnackBarBehavior.floating,
        content: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              hSizedBox1,
              const CircleAvatar(
                  radius: 16,
                  backgroundColor: KConstantColors.whiteColor,
                  child: Icon(Icons.check, color: KConstantColors.greenColor)),
              hSizedBox2,
              Text(title, style: KCustomTextStyle.kMedium(context, 10))
            ],
          ),
        )));
  }

  static successDialogBox(
      {required BuildContext context, required String title}) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: KConstantColors.bgColorFaint,
            actions: [
              CustomRoundedButton(
                  width: 20,
                  height: 5,
                  onTap: () {
                    Navigator.pop(context);
                  },
                  label: "Okay")
            ],
            title: Text(title, style: KCustomTextStyle.kMedium(context, 10)),
          );
        });
  }
}

class MyCustomAlertBox {
  static showAlert({
    required Function onYesTap,
    required BuildContext context,
    required String title,
    required String? yesButtonTitle,
    required String? noNuttonTitle,
  }) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: KConstantColors.bgColorFaint,
            actions: [
              CustomRoundedButton(
                  width: 20,
                  height: 5,
                  onTap: () {
                    Navigator.pop(context);
                  },
                  label: noNuttonTitle ?? "Go back"),
              CustomRoundedButton(
                  backgroundColor: KConstantColors.redColor,
                  width: 20,
                  height: 5,
                  onTap: () {
                    onYesTap();
                  },
                  label: yesButtonTitle ?? "Okay")
            ],
            title: Text(title, style: KCustomTextStyle.kMedium(context, 10)),
          );
        });
  }

  static showSWWAlert({required BuildContext context}) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: KConstantColors.bgColorFaint,
            actions: [
              CustomRoundedButton(
                  width: 20,
                  height: 5,
                  onTap: () {
                    Navigator.pop(context);
                  },
                  label: "Okay")
            ],
            title: Text("Something went wrong, Try again!",
                style: KCustomTextStyle.kMedium(context, 10)),
          );
        });
  }
}
