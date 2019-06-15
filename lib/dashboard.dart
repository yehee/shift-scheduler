import 'package:flutter/material.dart';
import 'package:schedule/calendar.dart';
import 'package:schedule/availability.dart';
import 'package:schedule/chart.dart';
import 'package:schedule/find.dart';
import 'package:schedule/page.dart';
import 'package:schedule/util.dart';

class Dashboard extends StatefulWidget {
  final String title = 'Dashboard';

  @override
  State<StatefulWidget> createState() => DashboardState();
}

class DashboardState extends State<Dashboard> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return _buildBody(context);
  }

  Widget _buildBody(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: 300.0,
          child: SimpleTimeSeriesChart.withSampleData(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: () {},
              child: Text('Day'),
            ),
            FlatButton(
              onPressed: () {},
              child: Text('Month'),
            ),
            FlatButton(
              onPressed: () {},
              child: Text('Year'),
            ),
          ],
        ),
        ListTile(
          title: Text('Calendar'.toUpperCase(), style: titleBold,),
          trailing: Icon(Icons.keyboard_arrow_right, color: Colors.redAccent,),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Page(title: 'Calendar', body: Calendar.today())),);
          },
        ),
        ListTile(
          title: Text('Availability'.toUpperCase(), style: titleBold,),
          trailing: Icon(Icons.keyboard_arrow_right, color: Colors.redAccent,),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Availability()),);
          },
        ),
        ListTile(
          title: Text('Look for a cover'.toUpperCase(), style: titleBold,),
          trailing: Icon(Icons.keyboard_arrow_right, color: Colors.redAccent,),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Find()),);
          },
        ),
      ],
    );
  }
}