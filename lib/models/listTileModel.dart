
import 'package:flutter/cupertino.dart';

class ListTileModel {
  String title;
  String subTitle;
  IconData? leading;
  String trailing;
  // if not read yet or read
  IconData? status;
  Color statusColor;
  ListTileModel({
    required this.title,
    required this.subTitle,
    required this.leading,
    required this.trailing,
    required this.status,
    required this.statusColor

  });

}
