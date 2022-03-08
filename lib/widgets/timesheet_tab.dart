import 'package:clonehrm/utils/constant.dart';
import 'package:clonehrm/widgets/date_picker.dart';
import 'package:clonehrm/widgets/list_timesheet.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class TimeSheetScreen extends StatefulWidget {
  const TimeSheetScreen({Key? key}) : super(key: key);

  @override
  _TimeSheetScreenState createState() => _TimeSheetScreenState();
}

class _TimeSheetScreenState extends State<TimeSheetScreen> {
  bool isSelectedWeekly = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                const DatePicker(),
                Center(
                  child: Container(
                    padding: const EdgeInsets.only(left: 65, right: 65),
                    child: SfRadialGauge(axes: <RadialAxis>[
                      RadialAxis(
                        minimum: 0,
                        maximum: 100,
                        showLabels: false,
                        showTicks: false,
                        startAngle: 270,
                        endAngle: 180,
                        axisLineStyle: const AxisLineStyle(
                          thickness: 0.1,
                          cornerStyle: CornerStyle.bothCurve,
                          thicknessUnit: GaugeSizeUnit.factor,
                        ),
                        pointers: const <GaugePointer>[
                          RangePointer(
                            value: 75.0,
                            cornerStyle: CornerStyle.bothCurve,
                            color: kBlueColor,
                            width: 0.1,
                            sizeUnit: GaugeSizeUnit.factor,
                          )
                        ],
                        annotations: [
                          GaugeAnnotation(
                              widget: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const [
                                  Text('18', style: kTextTitleStyleBlue),
                                  Text('Days', style: kTextSmallTitleStyleBlue),
                                ],
                              ),
                              const Text('of 23 Days',
                                  style: TextStyle(
                                      color: kBlueColor,
                                      fontSize: kTextSmallSize))
                            ],
                          ))
                        ],
                      )
                    ]),
                  ),
                ),
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Expanded(
                      child: Container(
                          margin: const EdgeInsets.only(
                              right: 10, left: 10, bottom: 10),
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text('0 ',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontSize: kTextBigSize)),
                                Text('Missed Work', style: kTextSmallStyle)
                              ]))),
                  Expanded(
                      child: Center(
                          child: Container(
                              margin: const EdgeInsets.only(
                                  right: 10, left: 10, bottom: 10),
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
                                            color: Colors.blue,
                                            fontSize: kTextBigSize)),
                                    Text('Remote Work', style: kTextSmallStyle)
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
                                border:
                                    Border.all(width: 1, color: Colors.grey),
                                borderRadius: BorderRadius.circular(15)),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text('1.5 ',
                                      style: TextStyle(
                                          color: Color(-15798617),
                                          fontSize: kTextBigSize)),
                                  Text('Paid Leave', style: kTextSmallStyle)
                                ]))),
                    Expanded(
                        child: Center(
                            child: Container(
                                margin: const EdgeInsets.all(10),
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Colors.grey),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text('0 ',
                                        style: TextStyle(
                                            color: Color(0xf2fcbd06),
                                            fontSize: kTextBigSize)),
                                    Text('Unpaid Leave', style: kTextSmallStyle)
                                  ],
                                ))))
                  ],
                ),
                Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 32,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 40),
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              decoration: isSelectedWeekly
                                  ? BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: kBlueColor)
                                  : null,
                              child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      isSelectedWeekly = true;
                                    });
                                  },
                                  child: Text(
                                    "Weekly",
                                    style: isSelectedWeekly
                                        ? const TextStyle(color: Colors.white)
                                        : const TextStyle(
                                            color: kBlueColor)
                                  ))),
                          Container(
                              height: 32,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 40),
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              decoration: !isSelectedWeekly
                                  ? BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: kBlueColor)
                                  : null,
                              child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      isSelectedWeekly = false;
                                    });
                                  },
                                  child: Text(
                                    "Monthly",
                                    style: !isSelectedWeekly
                                        ? const TextStyle(color: Colors.white)
                                        : const TextStyle(
                                            color: kBlueColor)
                                  ))),
                        ])),
                Visibility(
                    visible: isSelectedWeekly ? true : false,
                    child: Container(
                        margin:
                            const EdgeInsets.only(top: 20, left: 20, right: 20),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.arrow_left),
                              Text(
                                '24/05/2021 ~ 30/05/2021',
                                textAlign: TextAlign.center,
                                style: kTextSmallTitleStyleBlue,
                              ),
                              Icon(Icons.arrow_right)
                            ]))),
                const ListTimesheet()
              ],
            )));
  }
}
