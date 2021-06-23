import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:system_cursor/cursors.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'System Cursor Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('System Cursor Demo'),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Linkify(
                  onOpen: (link) async {
                    await launch(link.url);
                  },
                  text:
                      'Please note that some cursors are platform specific. Please refer to https://api.flutter.dev/flutter/services/SystemMouseCursors-class.html',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Cursors(),
              Padding(
                padding: const EdgeInsets.all(18),
                child: Linkify(
                  text:
                      'Source code: https://github.com/iqfareez/system_cursor',
                  textAlign: TextAlign.center,
                  onOpen: (link) async {
                    await launch(link.url);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
