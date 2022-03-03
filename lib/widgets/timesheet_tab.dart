import 'package:clonehrm/widgets/date_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimeSheetScreen extends StatefulWidget {
  const TimeSheetScreen({Key? key}) : super(key: key);

  @override
  _TimeSheetScreenState createState() => _TimeSheetScreenState();
}

class _TimeSheetScreenState extends State<TimeSheetScreen> {
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DatePicker(),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                height: 150,
                decoration: BoxDecoration(
                    color: const Color(-1261515058),
                    borderRadius: BorderRadius.circular(15)),
                child: const Text('Circle Progress'),
              ),
            ),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Expanded(
                  child: Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('0 ',
                                style:
                                    TextStyle(color: Colors.red, fontSize: 20)),
                            Text(
                              'Missed Work',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ]))),
              Expanded(
                  child: Center(
                      child: Container(
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text('0 ',
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 20)),
                                Text('Remote Work',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))
                              ]))))
            ]),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Container(
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text('1.5 ',
                                  style: TextStyle(
                                      color: Color(-15798617), fontSize: 20)),
                              Text('Paid Leave',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold))
                            ]))),
                Expanded(
                    child: Center(
                        child: Container(
                            margin: const EdgeInsets.all(10),
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.circular(15)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text('0 ',
                                    style: TextStyle(
                                        color: Color(0xf2fcbd06),
                                        fontSize: 20)),
                                Text('Unpaid Leave',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold))
                              ],
                            ))))
              ],
            ),
            Container(
                margin: const EdgeInsets.only(top: 30),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                      width: 130,
                      height: 32,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFF010531)),
                      child: const TextButton(
                          onPressed: null,
                          child: Text(
                            "Weekly",
                            style: TextStyle(color: Colors.white),
                          ))),
                  Container(
                      width: 130,
                      height: 32,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFF010531)),
                      child: const TextButton(
                          onPressed: null,
                          child: Text(
                            "Monthly",
                            style: TextStyle(color: Colors.white),
                          ))),
                ])),
            Container(
              margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.arrow_left),
                  Text(
                    '24/05/2021 ~ 30/05/2021',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xFF010531),
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.arrow_right)
                ],
              ),
            )
          ],
        )));
  }
}
