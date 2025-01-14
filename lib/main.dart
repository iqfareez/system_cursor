import 'package:flutter/material.dart';
import 'package:system_cursor/app.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode themeMode = ThemeMode.light;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'System Cursor Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      darkTheme: ThemeData.dark(),
      themeMode: themeMode,
      home: Scaffold(
          appBar: AppBar(
            title: Text('System Cursor Demo'),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                themeMode = themeMode == ThemeMode.dark
                    ? ThemeMode.light
                    : ThemeMode.dark;
              });
            },
            child: Icon(themeMode == ThemeMode.light
                ? Icons.light_mode
                : Icons.dark_mode),
          ),
          body: App()),
    );
  }
}

class MyDialog extends StatelessWidget {
  const MyDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text('Select Theme'),
      children: [
        SimpleDialogOption(
          child: Text('Light'),
        ),
        SimpleDialogOption(
          child: Text('Dark'),
        ),
      ],
    );
  }
}
