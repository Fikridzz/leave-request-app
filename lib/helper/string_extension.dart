import 'package:intl/intl.dart';

extension StringFormat on String? {
  String ddMMMyyyy() {
    if (this != null && this?.isNotEmpty == true) {
      return DateFormat('dd MMM yyyy').format(DateTime.parse(this ?? ''));
    } else {
      return '-';
    }
  }

  String yyyyMMdd() {
    if (this != null && this?.isNotEmpty == true) {
      return DateFormat('yyyy-MM-dd').format(DateTime.parse(this ?? ''));
    } else {
      return '-';
    }
  }

  int toInt() {
    if (this != null && this?.isNotEmpty == true) {
      return int.parse(this ?? '');
    } else {
      return 0;
    }
  }
}
