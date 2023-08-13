import 'package:eatsure_restaurant_admin/modules/base/notifier/base.notifier.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import '../../shared/providers/theme.notifier.dart';

class AppNotifier {
  static final List<SingleChildWidget> providers = [
    ChangeNotifierProvider(create: (context) => ThemeNotifier()),
    ChangeNotifierProvider(create: (context) => BaseNotifier()),
  ];
}
