import 'package:chowie/utils/bottom_nav_item_widget.dart';
import 'package:chowie/utils/nav_bar_enum.dart';
import 'package:chowie/view/home_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  SelectedNavBar _selectedNavBar = SelectedNavBar.home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 55,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              InkWell(
                onTap: () {
                  setState(() {
                    _selectedNavBar = SelectedNavBar.home;
                    print('home');
                  });
                },
                child: bottomNavItem(
                  context,
                  position: 'left',
                  icon: Icons.home,
                  isActive:
                      _selectedNavBar == SelectedNavBar.home ? true : false,
                  title: 'Home',
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _selectedNavBar = SelectedNavBar.history;
                    print('history button tapped');
                  });
                },
                child: bottomNavItem(
                  context,
                  position: 'left',
                  icon: Icons.history,
                  isActive:
                      _selectedNavBar == SelectedNavBar.history ? true : false,
                  title: 'History',
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _selectedNavBar = SelectedNavBar.store;
                    print('store button pressed');
                  });
                },
                child: bottomNavItem(
                  context,
                  position: 'right',
                  icon: Icons.store,
                  isActive:
                      _selectedNavBar == SelectedNavBar.store ? true : false,
                  title: 'Store',
                ),
              )
            ],
          ),
        ),
      ),
      body: HomeScreen(),
    );
  }
}
