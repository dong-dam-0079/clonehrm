import 'package:clonehrm/screen/request_screen.dart';
import 'package:clonehrm/screen/timesheet_screen.dart';
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
              left: 0.0,
              top: 10.0,
              bottom: 15.0,
              right: 0.0,
            ),
            child: Column(
              children: [
                Container(
                    height: 40,
                    margin: const EdgeInsets.symmetric(horizontal: 60),
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: const Color(-1261515058),
                        borderRadius: BorderRadius.circular(15)),
                    child: TabBar(
                      indicator: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      tabs: const [
                        Tab(text: 'Timesheet'),
                        Tab(text: 'Request')
                      ],
                    )),
                Container(
                  height: 400,
                  color: Colors.black,
                  child: TabBarView(
                      children: <Widget>[TimeSheetScreen(), RequestScreen()]),
                )
              ],
            ),
          )),
        ));
  }
}
