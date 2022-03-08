import 'package:flutter/material.dart';
import 'package:scroll_date_picker/scroll_date_picker.dart';

import '../utils/constant.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({Key? key}) : super(key: key);

  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime currentDate = DateTime.now();
  DateTime? pickedDate;
  bool isClickPickedDate = true;

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
            onPressed: () {
              setState(() {
                isClickPickedDate = false;
              });
              showDialogDatePicker();
            },
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                '${currentDate.month}/${currentDate.year}',
                style: const TextStyle(color: Colors.black, fontSize: 17),
              ),
              Icon(isClickPickedDate ? Icons.arrow_right : Icons.arrow_drop_down, color: Colors.black)
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
                        onPressed: () {
                          setState(() {
                            isClickPickedDate = true;
                          });
                          Navigator.pop(context);
                        },
                        child: const Text('Cancel',
                            style: kTransparentText)),
                    TextButton(
                        onPressed: () => {
                              setState(() {
                                isClickPickedDate = true;
                                currentDate = pickedDate!;
                              }),
                              Navigator.pop(context)
                            },
                        child: const Text('Select',
                            style: kTransparentText)),
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
