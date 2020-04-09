import 'package:chowie/model/available_food_items_model.dart';
import 'package:chowie/provider/repository/food_items_provider.dart';
import 'package:chowie/utils/custom_app_bar_widget.dart';
import 'package:chowie/utils/custom_widget.dart';
import 'package:chowie/utils/store_items_card.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatefulWidget {
   const StoreScreen({Key key}) : super(key: key);
  @override
  _StoreScreenState createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
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
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              customAppBar(
                context,
                title: 'CHOWie',
                showTitle: true,
                profileUrl: 'assets/images/profile.png',
                iconUrl: 'assets/images/menu.png',
              ),
              Expanded(
                child: Container(
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: <Widget>[
                      Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          ),
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(left: 15.0, top: 20, right: 15.0),
                        decoration: BoxDecoration(
                          color: Color(0xFFF9F9F9),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0)),
                        ),
                        child: ListView(
                          children: <Widget>[
                            CustomStoreCard(
                              foodItem: foodItems[0],
                              position: 'right',
                              color: Color(0xffFBE8D3).withOpacity(.7),
                            ),
                            SizedBox(height: 15.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Wrap(
                                runSpacing: 15.0,
                                alignment: WrapAlignment.spaceBetween,
                                children: <Widget>[
                                  ...foodItems[0]
                                      .items
                                      .map(
                                        (item) => StoreItemsCard(item: item),
                                      )
                                      .toList(),
                                ],
                              ),
                            ),
                            //title will be here

                            SizedBox(height: 15.0),
                            CustomStoreCard(
                              foodItem: foodItems[1],
                              position: 'left',
                              color: Color(0xffA0EDF7).withOpacity(.7),
                            ),
                            SizedBox(height: 15.0),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Wrap(
                                runSpacing: 15.0,
                                alignment: WrapAlignment.spaceBetween,
                                children: <Widget>[
                                  ...foodItems[1]
                                      .items
                                      .map(
                                        (item) => StoreItemsCard(item: item),
                                      )
                                      .toList(),
                                ],
                              ),
                            ),
                            SizedBox(height: 15.0),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
