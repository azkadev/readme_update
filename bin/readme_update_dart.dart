import 'dart:io';

import 'package:readme_update_dart/readme_update_dart.dart' as readme_update_dart;

void main(List<String> arguments) async {
  File file = File("README.md");
  RegExp regExp = RegExp(r"<!-- Begin (Youtube-Cards) -->(.*)<!-- END (YOUTUBE-CARDS) -->", caseSensitive: false, dotAll: true);
  String data = await file.readAsString();
  data = data.replaceAll(regExp, "<!-- Begin Youtube-Cards -->\n\naoskowkfokwofkowkfowkfowkof\n\n<!-- END YOUTUBE-CARDS -->");
  print(data);
  file.writeAsString(data);
}
