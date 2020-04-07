import 'package:chowie/model/suggested_food_model.dart';
import 'package:chowie/utils/custom_app_bar_widget.dart';
import 'package:chowie/utils/suggest_food_widget.dart';
import 'package:flutter/material.dart';

class CookDescriptionScreen extends StatelessWidget {
  final SuggestedFoodModel suggestedFoodModel;
  CookDescriptionScreen(this.suggestedFoodModel);

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
                title: 'CHOWie',
                showTitle: true,
                profileUrl: 'assets/images/profile.png',
                iconUrl: 'assets/images/menu.png',
              ),
              SizedBox(height: 15.0),
              CustomSuggestFoodCard(
                context: context,
                hideButton: true,
                boxHeight: MediaQuery.of(context).size.height * .32,
                suggestedFoodModel: suggestedFoodModel,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('PROCEDURE',
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500)),
              ),
              Expanded(
                child: ListView(
                  children: suggestedFoodModel.procedure
                      .map((steps) => Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(steps,
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w400)),
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
