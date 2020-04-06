import 'package:chowie/utils/row_text_widget.dart';
import 'package:flutter/material.dart';

class FoodHistoryCard extends StatelessWidget {
  final imageUrl;
  final title;
  final subTitle;
  final time;
  const FoodHistoryCard(
      {Key key, this.imageUrl, this.title, this.subTitle, this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(color: Colors.black26, width: 2),
        ),
       
      ),
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundColor: Colors.black12,
              backgroundImage: AssetImage(imageUrl),
              radius: 40,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 10),
                  child: Text(title,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w500)),
                ),
                TextRow(
                  firstText: subTitle,
                  secondText: time,
                  textStyle: TextStyle(
                    color: Colors.black.withOpacity(.5),
                    fontSize: 18.0,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
