import 'package:chowie/utils/bottom_nav_item_widget.dart';
import 'package:chowie/utils/nav_bar_enum.dart';
import 'package:chowie/view/history_screen.dart';
import 'package:chowie/view/home_screen.dart';
import 'package:chowie/view/store_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  SelectedNavBar _selectedNavBar = SelectedNavBar.home;
  PageController _pageController = PageController(
    initialPage: 0,
  );

  List<Widget> screens = [
    HomeScreen(),
    HistoryScreen(),
    StoreScreen(),
  ];
  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

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
                  _pageController.animateToPage(0,
                      duration: Duration(milliseconds: 400),
                      curve: Curves.easeIn);
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
                  _pageController.animateToPage(1,
                      duration: Duration(milliseconds: 200),
                      curve: Curves.easeIn);
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
                  _pageController.animateToPage(2,
                      duration: Duration(milliseconds: 200),
                      curve: Curves.easeIn);
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
      body: PageView.builder(
        onPageChanged: (int page) {
          _pageController.animateToPage(page,
              duration: Duration(milliseconds: 200), curve: Curves.easeIn);
          if (page == 0) {
            setState(() {
              _selectedNavBar = SelectedNavBar.home;
            });
          }
          if (page == 1) {
            setState(() {
              _selectedNavBar = SelectedNavBar.history;
            });
          }
          if (page == 2) {
            setState(() {
              _selectedNavBar = SelectedNavBar.store;
            });
          }
        },
        scrollDirection: Axis.horizontal,
        controller: _pageController,
        itemCount: screens.length,
        itemBuilder: (context, index) => screens[index],
      ),
    );
  }
}
