import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'app/providers/app.notifier.dart';
import 'modules/splash/views/splash.view.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  SystemChannels.textInput.invokeMethod('TextInput.hide');
  runApp(const Core());
}

class Core extends StatelessWidget {
  const Core({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: AppNotifier.providers,
      child: const Lava(),
    );
  }
}

class Lava extends StatelessWidget {
  const Lava({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: ((context, orientation, deviceType) {
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashView(),
      );
    }));
  }
}
