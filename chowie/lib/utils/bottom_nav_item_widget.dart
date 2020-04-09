import 'package:flutter/material.dart';

Widget bottomNavItem(BuildContext context, {icon, position, title, isActive}) {
  return Container(
    width: isActive ? 120 : 50,
    height: 50,
    child: Stack(
      alignment: Alignment.bottomLeft,
      children: <Widget>[
        Positioned(
          top: isActive ? 0.0 : 5,
          right: position == 'right' ? 0 : null,
          left: position == 'left' ? 0 : null,
          child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            height: isActive ? 50.0 : 40,
            width: isActive ? 50.0 : 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(27.0), 
              color: isActive
                  ? Theme.of(context).primaryColor
                  : Colors.grey.withOpacity(.4),
            ),
            child: Icon(
              icon,
              color: isActive ? Colors.white : Colors.black,
              size: isActive? 28 : 24,
            ),
          ),
        ),
        if (isActive)
          Positioned(
            right: position == 'left' ? 5 : null,
            left: position == 'right' ? 5 : null,
            top: 7.5,
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              curve: Curves.bounceIn,
              width: isActive ? 75 : 20,
              height: isActive ? 35 : 30,
              decoration: BoxDecoration(
                color: isActive ? Theme.of(context).primaryColor: Colors.grey.withOpacity(.7),
                borderRadius: BorderRadius.only(
                  topRight: position == 'left'
                      ? Radius.circular(25.0)
                      : Radius.circular(0.0),
                  bottomRight: position == 'left'
                      ? Radius.circular(25.0)
                      : Radius.circular(0.0),
                  topLeft: position == 'left'
                      ? Radius.circular(0.0)
                      : Radius.circular(25.0),
                  bottomLeft: position == 'left'
                      ? Radius.circular(0.0)
                      : Radius.circular(25.0),
                ),
              ),
              alignment: Alignment.center,
              child: Text(title,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20)),
            ),
          ),
      ],
    ),
  );
}
