import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

import 'cursors.dart';
import 'main.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Linkify(
              onOpen: (link) async {
                await launchUrl(Uri.parse(link.url));
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
              text: 'Source code: https://github.com/iqfareez/system_cursor',
              textAlign: TextAlign.center,
              onOpen: (link) async {
                await launchUrl(Uri.parse(link.url));
              },
            ),
          )
        ],
      ),
    );
  }
}
