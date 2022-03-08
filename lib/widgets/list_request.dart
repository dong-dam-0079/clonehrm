import 'package:clonehrm/utils/constant.dart';
import 'package:flutter/material.dart';

class ListRequest extends StatefulWidget {
  const ListRequest({Key? key}) : super(key: key);

  @override
  _ListRequestState createState() => _ListRequestState();
}

class _ListRequestState extends State<ListRequest> {
  bool isExpandRequestNotes = false;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 4,
        physics: const ClampingScrollPhysics(),
        itemBuilder: (BuildContext context, index) => Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('05 March 2022',
                    style: TextStyle(color: Colors.grey, fontSize: 15)),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Row(
                                  children: [
                                    const Icon(Icons.account_circle_rounded),
                                    Container(
                                      margin: const EdgeInsets.only(left: 10),
                                      child: const Text(
                                        'Nguyen Van A',
                                        style: TextStyle(
                                            fontSize: kTextBigSize,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: const [
                                    Text(
                                      'Department 2',
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ]))
                            ],
                          )),
                      const Divider(
                        height: 2,
                        color: Color(0xffb1b0b0),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Punch Session',
                                      style: kTextTitleSmallStyle),
                                  const Text('All Day',
                                      style: kTextContentStyleBlack),
                                  Container(
                                    margin: const EdgeInsets.only(top: 20),
                                  ),
                                  const Text('Checkin',
                                      style: kTextTitleSmallStyle),
                                  const Text('08:30',
                                      style: kTextContentStyleBlack)
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Work type',
                                      style: TextStyle(color: Colors.grey)),
                                  const Text('Offline work',
                                      style: kTextContentStyleBlack),
                                  Container(
                                    margin: const EdgeInsets.only(top: 20),
                                  ),
                                  const Text('Checkout',
                                      style: kTextTitleSmallStyle),
                                  const Text('18:30',
                                      style: kTextContentStyleBlack)
                                ],
                              ),
                              Container(
                                  width: 60,
                                  height: 110,
                                  alignment: Alignment.bottomCenter,
                                  child: Visibility(
                                    visible:
                                        isExpandRequestNotes ? false : true,
                                    child: TextButton.icon(
                                        icon: const Icon(Icons.arrow_drop_down,
                                            color: Colors.black),
                                        label: const Text(''),
                                        onPressed: () {
                                          setState(() {
                                            isExpandRequestNotes = true;
                                          });
                                        }),
                                  ))
                            ],
                          )),
                      Visibility(
                          visible: isExpandRequestNotes ? true : false,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 15, right: 15, bottom: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  child: const Text(
                                    'Request Notes',
                                    style: kTextTitleSmallStyle,
                                  ),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        child: Container(
                                            alignment: Alignment.centerLeft,
                                            child: const Icon(Icons.article))),
                                    const Expanded(
                                        flex: 3,
                                        child: Text(
                                          'I have a meeting and after that i forgot checkout.',
                                          maxLines: 2,
                                          style: kTextSmallContent,
                                        )),
                                    Expanded(
                                        child: Container(
                                            alignment: Alignment.center,
                                            child: TextButton.icon(
                                                icon: const Icon(
                                                    Icons.arrow_drop_up,
                                                    color: Colors.black),
                                                label: const Text(''),
                                                onPressed: () {
                                                  setState(() {
                                                    isExpandRequestNotes =
                                                        false;
                                                  });
                                                })))
                                  ],
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ],
            )));
  }
}
