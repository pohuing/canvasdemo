import 'package:canvasdemo/painter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool useLayers = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Use Layers:'),
          Checkbox(
              value: useLayers,
              onChanged: (v) => setState(() {
                    useLayers = v!;
                  })),
        ],
      ),
      body: CustomPaint(
        size: MediaQuery.of(context).size,
        painter: Painter(useLayers),
      ),
    );
  }
}
