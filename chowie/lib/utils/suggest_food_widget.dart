import 'package:chowie/model/suggested_food_model.dart';
import 'package:chowie/view/cook_description_screen.dart';
import 'package:flutter/material.dart';

class CustomSuggestFoodCard extends StatelessWidget {
  final SuggestedFoodModel suggestedFoodModel;
  final hideButton;
  final boxHeight;
  final BuildContext context;

  const CustomSuggestFoodCard(
      {Key key, this.suggestedFoodModel, this.hideButton, this.boxHeight,this.context})
      : super(key: key);

  @override
  Widget build(context) {
    return Container(
        height: boxHeight,
        margin: EdgeInsets.symmetric(vertical: 7.5,horizontal: 15.0),
        decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(boxHeight < 160.0 ? 12.0 : 18.0),
    image: DecorationImage(
      image: AssetImage(suggestedFoodModel.imageUrl),
      fit: BoxFit.fill,
    ),
        ),
        alignment: Alignment.bottomLeft,
        child: Container(
    height: 55,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.black.withOpacity(.3),
      borderRadius: BorderRadiusDirectional.only(
          bottomEnd: Radius.circular(12.0),
          bottomStart: Radius.circular(12.0)),
    ),
    child: Row(
      mainAxisAlignment: hideButton
          ? MainAxisAlignment.start
          : MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width * .3,
          margin: EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            suggestedFoodModel.name,
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w800),
          ),
        ),
        if (hideButton == false)
          GestureDetector(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    CookDescriptionScreen(suggestedFoodModel))),
            child: Container(
              height: 35,
              width: MediaQuery.of(context).size.width * .3,
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25.0)),
              alignment: Alignment.center,
              child: Text(
                'Choose',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
      ],
    ),
        ),
      );
  }
}
