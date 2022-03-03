import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:scroll_date_picker/scroll_date_picker.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({Key? key}) : super(key: key);

  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime currentDate = DateTime.now();
  DateTime? pickedDate = null;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          width: 120,
          height: 40,
          decoration: BoxDecoration(
              color: const Color(-1261515058),
              borderRadius: BorderRadius.circular(15)),
          child: TextButton(
            onPressed: () => showDialogDatePicker(),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                '${currentDate.month}/${currentDate.year}',
                style: const TextStyle(color: Colors.black, fontSize: 17),
              ),
              const Icon(Icons.arrow_drop_down)
            ]),
          ),
        ),
      ],
    );
  }

  showDialogDatePicker() => showModalBottomSheet<void>(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
            height: 250,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Cancel',
                            style: TextStyle(
                                backgroundColor: Colors.transparent,
                                color: Colors.black))),
                    TextButton(
                        onPressed: () => {
                              setState(() {
                                currentDate = pickedDate!;
                              }),
                              Navigator.pop(context)
                            },
                        child: const Text('Select',
                            style: TextStyle(
                                backgroundColor: Colors.transparent,
                                color: Colors.black))),
                  ],
                ),
                const Divider(color: Colors.grey, height: 10),
                Center(
                    child: SizedBox(
                        height: 150,
                        child: ScrollDatePicker(
                            selectedDate: currentDate,
                            onDateTimeChanged: (date) => {pickedDate = date})))
              ],
            ));
      });
}
