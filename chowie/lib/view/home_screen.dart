import 'package:chowie/model/available_food_items_model.dart';
import 'package:chowie/provider/data/food_history_provider.dart';
import 'package:chowie/provider/repository/food_items_provider.dart';
import 'package:chowie/utils/custom_app_bar_widget.dart';
import 'package:chowie/utils/custom_widget.dart';
import 'package:chowie/utils/food_history_card_widget.dart';
import 'package:chowie/utils/row_text_widget.dart';
import 'package:chowie/view/cook_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<FoodItemsModel> foodItems;
  @override
  void initState() {
    super.initState();
    foodItems = FoodItemsProvider.getFoodItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          color: Colors.grey.withOpacity(.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              customAppBar(
                context,
                iconUrl: 'assets/images/menu.png',
                profileUrl: 'assets/images/profile.png',
                title: 'CHOWie',
                showTitle: false,
              ),
              Hero(
                tag: 'appBar',
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: double.infinity,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * .27,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(45.0),
                              bottomRight: Radius.circular(45)),
                        ),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20.0, top: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'CHOWie',
                                      style: TextStyle(
                                          fontSize: 32,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 40),
                                    Text('What should we eat today?',
                                        style: TextStyle(
                                            fontSize: 22, color: Colors.white)),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 130,
                                margin:
                                    EdgeInsets.only(right: 20.0, bottom: 30),
                                alignment: Alignment.bottomRight,
                                child: Image.asset(
                                  'assets/images/blender1.png',
                                  fit: BoxFit.fill,
                                  height: double.infinity,
                                  width: 140,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 45,
                        right: 45,
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () => Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) => CookScreen())),
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  margin: EdgeInsets.only(
                                      right: 15.0,
                                      left: 2.0,
                                      top: 2.0,
                                      bottom: 2.0),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF59292),
                                    border: Border.all(
                                        color:
                                            Color(0xFFA0EDF7).withOpacity(.4),
                                        width: 4),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Image.asset('assets/images/flame.png'),
                                ),
                              ),
                              Text(
                                'Cook',
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black.withOpacity(.5)),
                              ),
                              Container(
                                margin:
                                    EdgeInsets.only(left: 10.0, right: 10.0),
                                width: 2,
                                height: 40,
                                color: Colors.grey.withOpacity(.6),
                              ),
                              Text(
                                '2700kCal',
                                style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black.withOpacity(.5)),
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                margin: EdgeInsets.only(
                                    right: 2.0,
                                    left: 2.0,
                                    top: 2.0,
                                    bottom: 2.0),
                                decoration: BoxDecoration(
                                  color: Color(0xFF0EA5C6),
                                  border: Border.all(
                                      color: Color(0xFFA0EDF7).withOpacity(.7),
                                      width: 4),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Image.asset('assets/images/Vector.png'),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, top: 30.0, bottom: 15),
                      child: Text(
                        'Available Food Items'.toUpperCase(),
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black.withOpacity(.5)),
                      ),
                    ),
                    CustomStoreCard(
                      foodItem: foodItems[0],
                      position: 'right',
                      color: Color(0xffFBE8D3).withOpacity(.7),
                    ),
                    CustomStoreCard(
                      foodItem: foodItems[1],
                      position: 'left',
                      color: Color(0xffA0EDF7).withOpacity(.7),
                    ),
                    TextRow(
                      firstText: 'FOOD HISTORY',
                      secondText: 'Today',
                      textStyle: TextStyle(
                          fontSize: 16.0, color: Colors.black.withOpacity(.5)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      margin:
                          EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                      padding: EdgeInsets.all(4),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          ...foodHistoryList
                              .map(
                                (foodhistory) => FoodHistoryCard(
                                  imageUrl: foodhistory.imageUrl,
                                  title: foodhistory.title,
                                  subTitle: foodhistory.itemsNeeded,
                                  time: foodhistory.time,
                                ),
                              )
                              .toList(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
