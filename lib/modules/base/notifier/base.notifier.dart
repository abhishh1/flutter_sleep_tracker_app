import 'package:flutter/material.dart';

class BaseNotifier extends ChangeNotifier {
  int bottomBarIndex = 0;

  void setBottomBarIndex({required int value}) {
    bottomBarIndex = value;
    notifyListeners();
  }

  bool sleepSoundEnabled = true;
  toggleSleepSound() {
    sleepSoundEnabled = !sleepSoundEnabled;
    notifyListeners();
  }

  bool alarmEnabled = true;
  toggleAlarmEnabled() {
    alarmEnabled = !alarmEnabled;
    notifyListeners();
  }

  bool sleepRecorderEnabled = true;
  toggleSleepRecorderEnabled() {
    sleepRecorderEnabled = !sleepRecorderEnabled;
    notifyListeners();
  }
}
