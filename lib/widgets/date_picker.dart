import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({Key? key}) : super(key: key);

  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
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
            onPressed: () => {},
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [Text('03/2022', style: TextStyle(color: Colors.black, fontSize: 17),), Icon(Icons.arrow_drop_down)]),
          ),
        ),
      ],
    );
  }
}
