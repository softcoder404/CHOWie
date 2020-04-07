import 'package:chowie/provider/data/suggested_food_data.dart';
import 'package:chowie/utils/custom_app_bar_widget.dart';
import 'package:chowie/utils/suggest_food_widget.dart';
import 'package:flutter/material.dart';

class CookScreen extends StatefulWidget {
  @override
  _CookScreenState createState() => _CookScreenState();
}

class _CookScreenState extends State<CookScreen> {
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
                showTitle: true,
              ),
              Center(
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * .6,
                  margin: EdgeInsets.symmetric(vertical: 15.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.only(
                            right: 15.0, left: 2.0, top: 2.0, bottom: 2.0),
                        decoration: BoxDecoration(
                          color: Color(0xFFF59292),
                          border: Border.all(
                              color: Color(0xFFA0EDF7).withOpacity(.4),
                              width: 4),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Image.asset('assets/images/flame.png'),
                      ),
                      SizedBox(width: 10.0),
                      Text('Suggested', style: TextStyle(fontSize: 22.0))
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .55,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'BASED ON WHAT YOU HAVE',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black.withOpacity(.6),
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  children: suggestedFoodList
                      .map((food) => CustomSuggestFoodCard(
                            context: context,
                            suggestedFoodModel: food,
                            hideButton: false,
                            boxHeight: 160.0,
                          ))
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
