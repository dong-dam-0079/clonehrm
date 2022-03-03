import 'package:flutter/src/foundation/basic_types.dart';
import 'package:scroll_date_picker/scroll_date_picker.dart';

class MonthYearPicker extends ScrollDatePicker {
  MonthYearPicker({required DateTime selectedDate, required ValueChanged<DateTime> onDateTimeChanged}) : super(selectedDate: selectedDate, onDateTimeChanged: onDateTimeChanged);


}