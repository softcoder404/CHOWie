import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
              Container(
                height: 50,
                width: double.infinity,
                color: Theme.of(context).primaryColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Image.asset('assets/images/menu.png',
                          height: 15.0, width: 24.0),
                    ),
                    Container(
                      height: 35,
                      width: 35,
                      margin: EdgeInsets.only(right: 15.0),
                      decoration: BoxDecoration(
                        color: Color(0xFFFBE8D3),
                        border: Border.all(color: Color(0xFFE5E5E5), width: 2),
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage('assets/images/profile.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.33,
                width: double.infinity,
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * .3,
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
                              height: 140,
                              margin: EdgeInsets.only(right: 20.0, bottom: 30),
                              alignment: Alignment.bottomRight,
                              child: Image.asset(
                                'assets/images/blender1.png',
                                fit: BoxFit.cover,
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
                            Container(
                              height: 50,
                              width: 50,
                              margin: EdgeInsets.only(right: 15.0,left: 2.0,top: 2.0,bottom: 2.0),
                              decoration: BoxDecoration(
                                color: Color(0xFFF59292),
                                border: Border.all(
                                    color: Color(0xFFA0EDF7).withOpacity(.4),
                                    width: 4),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Image.asset('assets/images/flame.png'),
                            ),
                            Text(
                              'Cook',
                              style: TextStyle(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black.withOpacity(.5)),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10.0,right: 10.0),
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
                              margin: EdgeInsets.only(right: 2.0,left: 2.0,top: 2.0,bottom: 2.0),
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
              Expanded(
                child: ListView(
                  
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
