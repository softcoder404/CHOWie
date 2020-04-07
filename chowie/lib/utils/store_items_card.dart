
import 'package:chowie/model/available_food_items_model.dart';
import 'package:flutter/material.dart';


class StoreItemsCard extends StatelessWidget {
  final Items item;
  const StoreItemsCard({
    Key key, this.item
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      width: 90,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.07),
            offset: Offset.zero,
            blurRadius: 8.0,
            spreadRadius: 5.0,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(item.imageUrl,height: 40,width: 60,fit: BoxFit.fill),
          Text('${item.totalItems} x ${item.itemName}',style:TextStyle(color: Colors.black.withOpacity(.7),fontSize:16.0,fontWeight:FontWeight.w500))
        ],
      ),
    );
  }
}
