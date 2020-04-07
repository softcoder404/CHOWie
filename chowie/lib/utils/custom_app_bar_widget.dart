 import 'package:flutter/material.dart';

Container customAppBar(BuildContext context,
      {title, profileUrl, onTapMenu, iconUrl,showTitle}) {
    return Container(
      height: 50,
      width: double.infinity,
      color: Theme.of(context).primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Image.asset(iconUrl, height: 15.0, width: 24.0),
          ),
          if(showTitle)
            Text(title,style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.w600,color: Colors.white),),
          Container(
            height: 35,
            width: 35,
            margin: EdgeInsets.only(right: 15.0),
            decoration: BoxDecoration(
              color: Color(0xFFFBE8D3),
              border: Border.all(color: Color(0xFFE5E5E5), width: 2),
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(profileUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }