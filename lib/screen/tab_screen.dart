import 'package:clonehrm/widgets/request_tab.dart';
import 'package:clonehrm/widgets/timesheet_tab.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          body: SafeArea(
              child: Padding(
                  padding: const EdgeInsets.only(
                      left: 0.0, top: 10.0, bottom: 5.0, right: 0.0),
                  child: Column(children: [
                    Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 90),
                                    padding: const EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                        color: const Color(-1261515058),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: TabBar(
                                      indicator: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      labelColor: Colors.black,
                                      unselectedLabelColor: Colors.grey,
                                      tabs: const [
                                        Tab(text: 'Timesheet'),
                                        Tab(text: 'Request')
                                      ],
                                    ))),
                            const Expanded(
                                flex: 1,
                                child: Divider(color: Colors.grey, height: 10))
                          ],
                        )),
                    const Expanded(
                        flex: 20,
                        child: TabBarView(
                            physics: NeverScrollableScrollPhysics(),
                            children: <Widget>[
                              TimeSheetScreen(),
                              RequestScreen()
                            ]))
                  ]))),
        ));
  }
}
