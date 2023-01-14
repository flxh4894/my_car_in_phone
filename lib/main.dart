import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_car_in_phone/views/home.dart';
import 'package:my_car_in_phone/views/test.dart';

void main() async {
  runApp(
    const ProviderScope(
      child: MyApp(
        child: Text("Hello World!"),
      ),
    ),
  );
}

// init app
class MyApp extends ConsumerStatefulWidget {
  const MyApp({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Car",
      navigatorKey: GlobalKey(),
      home: HomePage(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final MyApp widget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          widget.child,
          TextButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => HomePage(),
              ),
            ),
            child: const Text("Route Page"),
          )
        ],
      ),
    );
  }
}
