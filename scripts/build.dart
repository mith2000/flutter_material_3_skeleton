import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

const _devJsonConfigFilePath = './configs/.env/theme.dev.json';
const _stagingJsonConfigFilePath = './configs/.env/theme.staging.json';
const _prodJsonConfigFilePath = './configs/.env/theme.prod.json';

void main(List<String>? args) async {
  if (args?.isEmpty == true) {
    return;
  }
  Map<String, dynamic>? configJson;
  if (args?.first == 'dev') {
    configJson = readJsonFile(_devJsonConfigFilePath);
  } else if (args?.first == 'staging') {
    configJson = readJsonFile(_stagingJsonConfigFilePath);
  } else if (args?.first == 'prod') {
    configJson = readJsonFile(_prodJsonConfigFilePath);
  }
  if (configJson == null) {
    return;
  }
  final dartDefine = _readDartDefine(configJson);
  final runBuild = args?[1] ?? '';
  if (!['run', 'build'].contains(runBuild)) {
    debugPrint('$runBuild invalid');
    return;
  }
  final target = (args?.length ?? 0) > 2 ? args![2] : '';
  List<String> arguments = [];
  if (['ipa', 'apk', 'ios', 'android', 'aab'].contains(target)) {
    final buildName = (args?.length ?? 0) > 3 ? args![3] : '';
    final buildNumber = (args?.length ?? 0) > 4 ? args![4] : '';
    if (buildName.isEmpty && buildNumber.isEmpty) {
      arguments = [
        runBuild,
        target,
        '-t',
        'lib/main.dart',
        '--flavor',
        args?.first ?? '',
        ['ipa'].contains(target)
            ? "--export-options-plist=ios/ExportOptions.plist"
            : "",
        dartDefine,
      ];
    } else {
      arguments = [
        runBuild,
        target,
        '-t',
        'lib/main.dart',
        '--flavor',
        args?.first ?? '',
        ['ipa'].contains(target)
            ? "--export-options-plist=ios/ExportOptions.plist"
            : "",
        '--build-name',
        buildName,
        '--build-number',
        buildNumber,
        dartDefine,
      ];
    }
  } else {
    arguments = [
      runBuild,
      '-t',
      'lib/main.dart',
      '--flavor',
      args?.first ?? '',
      dartDefine,
    ];
  }

  if (runBuild.contains('build')) {
    debugPrint('command for build --> fvm flutter ${arguments.join(' ')}');
    var process = await Process.start(
      'bash',
      ['-c', 'fvm flutter ${arguments.join(' ')}'],
      workingDirectory: './app',
    );
    process.stdout.transform(utf8.decoder).listen((data) {
      debugPrint(data);
    });
    process.stderr.transform(utf8.decoder).listen((data) {
      debugPrint(data);
    });
  } else {
    debugPrint('command for run --> fvm flutter ${arguments.join(' ')}');
  }
}

String _readDartDefine(Map<String, dynamic> configJson) {
  if (!configJson.containsKey('dartDefine')) {
    throw Exception('Please update theme file - dartDefine not found');
  }
  Map<String, dynamic> dartDefineJson = configJson['dartDefine'];
  String dartDefine = '';
  dartDefineJson.forEach((key, value) {
    dartDefine += '--dart-define $key=$value ';
  });
  return dartDefine.trim();
}

Map<String, dynamic> readJsonFile(String filePath) {
  final mandatoryFile = File(filePath);
  var fileContent = mandatoryFile.readAsStringSync();
  fileContent = fileContent.replaceAll(RegExp('.+// .+\n'), '');
  return jsonDecode(fileContent);
}
