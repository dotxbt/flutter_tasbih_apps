import 'package:dotxbt_tasbih/apps.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting('id_ID', null).then((_) async {}).whenComplete(() {
    runApp(const Apps());
  });
}
