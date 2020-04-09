import 'package:chowie/utils/custom_app_bar_widget.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
   const HistoryScreen({Key key}) : super(key: key);
  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          color: Colors.grey.withOpacity(.05),
          child: Column(
            children: <Widget>[
              customAppBar(
                context,
                profileUrl: 'assets/images/profile.png',
                iconUrl: 'assets/images/menu.png',
                showTitle: true,
                title: 'CHOWie', 
              ),
            ],
          ),
        ),
      ),
    );
  }
}
