import 'package:clonehrm/utils/constant.dart';
import 'package:clonehrm/widgets/date_picker.dart';
import 'package:clonehrm/widgets/list_request.dart';
import 'package:flutter/material.dart';

class RequestScreen extends StatefulWidget {
  const RequestScreen({Key? key}) : super(key: key);

  @override
  _RequestScreenState createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen> {
  bool isPending = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  children: [
                    TextButton(
                        child: Text('Pending',
                            style: TextStyle(
                                fontSize: kTextSize,
                                color: isPending
                                    ? kBlueColor
                                    : Colors.grey,
                                fontWeight: FontWeight.bold)),
                        onPressed: () {
                          setState(() {
                            isPending = true;
                          });
                        }),
                    Visibility(
                        visible: isPending ? true : false,
                        child: Container(
                          width: 60,
                          height: 5,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              color: kBlueColor),
                        ))
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10),
                ),
                Column(
                  children: [
                    TextButton(
                        child: Text('Approved',
                            style: TextStyle(
                                fontSize: kTextSize,
                                color: !isPending
                                    ? kBlueColor
                                    : Colors.grey,
                                fontWeight: FontWeight.bold)),
                        onPressed: () {
                          setState(() {
                            isPending = false;
                          });
                        }),
                    Visibility(
                        visible: isPending ? false : true,
                        child: Container(
                          width: 80,
                          height: 5,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              color: kBlueColor),
                        ))
                  ],
                )
              ],
            ),
            Container(
                margin: const EdgeInsets.only(top: 30),
                child: const DatePicker()),
            const ListRequest()
          ],
        )));
  }
}
