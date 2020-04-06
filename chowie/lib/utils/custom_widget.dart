import 'package:chowie/model/available_food_items_model.dart';
import 'package:flutter/material.dart';

class CustomStoreCard extends StatelessWidget {
  final FoodItemsModel foodItem;
  final position;
  final Color color;
  const CustomStoreCard({
    Key key,this.foodItem,this.color,this.position
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: double.infinity,
      margin: EdgeInsets.symmetric(
          horizontal: 15.0, vertical: 10.0),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: <Widget>[
          Container(
            height: 110,
            width: double.infinity,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Row(
              mainAxisAlignment:position == 'left' ? MainAxisAlignment.end: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceAround,
                    crossAxisAlignment:position == 'left' ?  CrossAxisAlignment.end : CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '${foodItem.title}',
                        style: TextStyle(
                          color: Color(0xff283C63),
                            fontSize: 22,
                            fontWeight: FontWeight.w500),
                      ),
                      Text('${foodItem.totalItems} items')
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: position == 'left' ? 5  : null,
            right: position == 'right' ? 5 : null,  
            child: Container(
              height: 120,
              width: 148,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(foodItem.itemImagePath),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
