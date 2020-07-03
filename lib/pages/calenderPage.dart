import 'package:flutter/material.dart';
import 'package:airplane/main.dart';

import 'package:flutter/foundation.dart';
import 'dart:math';

class CalenderPage extends StatefulWidget {
  CalenderPage({Key key}) : super(key: key);

  @override
  _CalenderPageState createState() => _CalenderPageState();
}

class _CalenderPageState extends State<CalenderPage> {
  var image;

  var _iconColorAir = true;
  var _iconColorBuild = false;
  var  _oneWay=true;
  var _roundTrip=false;
  var _iconColor1 = true;
  var _iconColor2 = false;
  var _iconColor3 = false;
  var _iconColor4 = false;
  var _iconColor5 = false;
  var _iconColor6 = false;
  var _iconColor7 = false;
  var _iconColor8 = false;
  var _iconColor9 = false;
  var _iconColor10 = false;
  


  void initState() {
    super.initState();
    image = Image.asset('lib/Assets/wiry.png');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: BlueColor,
          child: Column(
            children: <Widget>[
              Stack(
                // alignment: Alignment.bottomCenter,
                children: <Widget>[
                  image,
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 3,
                      ),
                      Stack(
                        alignment: Alignment.topCenter,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 50,
                              ),
                               Container(
                                  
                                  height: 60.0, // height of the button
                                  width: 40.0,
                                  decoration:new BoxDecoration(
                                   
                                        borderRadius: new BorderRadius.all(
                                            const Radius.circular(15.0)),
                                        color: _iconColorAir ? RedColor : BlueColor,
                                      ) , // width of the button
                                  child: Center(
                                    child: Transform.rotate(
                                      angle: pi / 4,
                                      child: IconButton(
                                        icon: Icon(
                                          Icons.airplanemode_active,
                                          color: WhiteColor,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            _iconColorAir = true;
                                            _iconColorBuild = false;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              
                              //    SizedBox(
                              //   width: MediaQuery.of(context).size.width/50,

                              // ),
                            
                                 Container(
                                  
                                  height: 60.0, // height of the button
                                  width: 40.0,
                                  decoration:new BoxDecoration(
                                        borderRadius: new BorderRadius.all(
                                            const Radius.circular(15.0)),
                                        color: _iconColorBuild ? RedColor : BlueColor,
                                      ) , // width of the button
                                  child: Center(
                                    child: RotatedBox(
                                      quarterTurns: 1,
                                      child: IconButton(
                                        icon: Icon(
                                          Icons.blur_linear,
                                          color: WhiteColor,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            _iconColorBuild = true;
                                            _iconColorAir = false;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 50,
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 15,
                                child: Container(),
                              ),
                              Stack(
                                alignment: Alignment.topCenter,
                                children: <Widget>[
                                  Container(
                                      width: MediaQuery.of(context).size.width /
                                          1.1,
                                      decoration: new BoxDecoration(
                                        borderRadius: new BorderRadius.all(
                                            const Radius.circular(40.0)),
                                        color: RedColor,
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                50,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: <Widget>[
                                              RaisedButton(
                                                shape:
                                                    new RoundedRectangleBorder(
                                                        borderRadius:
                                                            new BorderRadius
                                                                .circular(18.0),
                                                        side: BorderSide(
                                                            color: WhiteColor)),
                                                onPressed: () {
                                                  setState(() {
                                                       _oneWay=true;
                                                  _roundTrip=false;

                                                  });
                                               
                                                },
                                                color: _oneWay?WhiteColor:RedColor,
                                                textColor:_oneWay?RedColor:WhiteColor,
                                                child: Text('One Way',
                                                    style: TextStyle(
                                                        fontSize: 14)),
                                              ),
                                              RaisedButton(
                                                shape:
                                                    new RoundedRectangleBorder(
                                                        borderRadius:
                                                            new BorderRadius
                                                                .circular(18.0),
                                                        side: BorderSide(
                                                            color: WhiteColor)),
                                                onPressed: () {
                                                  setState(() {
                                                    _oneWay=false;
                                                  _roundTrip=true;
                                                  });
                                                  
                                                },
                                                color:_roundTrip?WhiteColor:RedColor,
                                                textColor:_roundTrip? RedColor:WhiteColor,
                                                child: Text('Round trip',
                                                    style: TextStyle(
                                                        fontSize: 14)),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: <Widget>[
                                              SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      50),
                                              Row(
                                                children: <Widget>[
                                                  SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              15),
                                                  Text('from',
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: WhiteColor)),
                                                  SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              2),
                                                  Text('to',
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: WhiteColor)),
                                                ],
                                              ),
                                              SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      60),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              50),
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: <Widget>[
                                                      Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              3,
                                                          // height:
                                                          //     MediaQuery.of(context)
                                                          //             .size
                                                          //             .width /
                                                          //         5,
                                                          decoration:
                                                              new BoxDecoration(
                                                            borderRadius:
                                                                new BorderRadius
                                                                        .all(
                                                                    const Radius
                                                                            .circular(
                                                                        10.0)),
                                                            color: WhiteColor,
                                                          ),
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: <Widget>[
                                                              Text('BOM',
                                                                  style: new TextStyle(
                                                                      color:
                                                                          BlueColor,
                                                                      fontSize:
                                                                          30)),
                                                              Center(
                                                                widthFactor: 10,
                                                                child: Text(
                                                                    'Chatrapati Shivaji Intl,Mumbai India',
                                                                    style: new TextStyle(
                                                                        color:
                                                                            BlueColor)),
                                                              ),
                                                            ],
                                                          )),
                                                    ],
                                                  ),
                                                  RotatedBox(
                                                    quarterTurns: 1,
                                                    child: IconButton(
                                                      icon: Icon(
                                                        Icons
                                                            .airplanemode_active,
                                                        color: WhiteColor,
                                                      ),
                                                      onPressed: null,
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: <Widget>[
                                                      Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              3,
                                                          // height:
                                                          //     MediaQuery.of(context)
                                                          //             .size
                                                          //             .width /
                                                          //         5,
                                                          decoration:
                                                              new BoxDecoration(
                                                            borderRadius:
                                                                new BorderRadius
                                                                        .all(
                                                                    const Radius
                                                                            .circular(
                                                                        10.0)),
                                                            color: WhiteColor,
                                                          ),
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: <Widget>[
                                                              Text('BOM',
                                                                  style: new TextStyle(
                                                                      color:
                                                                          BlueColor,
                                                                      fontSize:
                                                                          30)),
                                                              Center(
                                                                widthFactor: 10,
                                                                child: Text(
                                                                    'Chatrapati Shivaji Intl,Mumbai India',
                                                                    style: new TextStyle(
                                                                        color:
                                                                            BlueColor)),
                                                              ),
                                                            ],
                                                          )),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              50),
                                                ],
                                              )
                                            ],
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: <Widget>[
                                              SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      50),
                                              Row(
                                                children: <Widget>[
                                                  SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              25),
                                                  Text('date of journey',
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: WhiteColor)),
                                                ],
                                              ),
                                              SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      60),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: <Widget>[
                                                  SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width /
                                                            50,
                                                    child: Container(),
                                                  ),
                                                  Column(
                                                    // mainAxisAlignment:
                                                    //     MainAxisAlignment.spaceEvenly,
                                                    children: <Widget>[
                                                      Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              1.16,
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              10,
                                                          decoration:
                                                              new BoxDecoration(
                                                            borderRadius:
                                                                new BorderRadius
                                                                        .all(
                                                                    const Radius
                                                                            .circular(
                                                                        10.0)),
                                                            color: WhiteColor,
                                                          ),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: <Widget>[
                                                              Text(
                                                                  ' 12/03/2020',
                                                                  style: new TextStyle(
                                                                      color:
                                                                          BlueColor,
                                                                      fontSize:
                                                                          20)),
                                                              Icon(Icons
                                                                  .calendar_today),
                                                            ],
                                                          )),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              50),
                                                ],
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  50),
                                          Column(
                                            children: <Widget>[
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: <Widget>[
                                                  SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              25),
                                                  Text('no. of travellers',
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: WhiteColor)),
                                                ],
                                              ),
                                              SizedBox(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      60),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: <Widget>[
                                                  SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              50),
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: <Widget>[
                                                      Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              1.17,
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              10,
                                                          decoration:
                                                              new BoxDecoration(
                                                            borderRadius:
                                                                new BorderRadius
                                                                        .all(
                                                                    const Radius
                                                                            .circular(
                                                                        40.0)),
                                                            color: WhiteColor,
                                                          ),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: <Widget>[
                                                              GestureDetector(
                                                                onTap: () {
                                                                  setState(() {
                                                                    _iconColor1 =
                                                                        true;
                                                                    _iconColor2 =
                                                                        false;
                                                                    _iconColor3 =
                                                                        false;
                                                                    _iconColor4 =
                                                                        false;
                                                                    _iconColor5 =
                                                                        false;
                                                                    _iconColor6 =
                                                                        false;
                                                                    _iconColor7 =
                                                                        false;
                                                                    _iconColor8 =
                                                                        false;
                                                                    _iconColor9 =
                                                                        false;
                                                                    _iconColor10 =
                                                                        false;
                                                                  });
                                                                },
                                                                child: ClipOval(
                                                                  child:
                                                                      Container(
                                                                    color: _iconColor1
                                                                        ? BlueColor
                                                                        : WhiteColor,
                                                                    height:
                                                                        30.0, // height of the button
                                                                    width:
                                                                        30.0, // width of the button
                                                                    child:
                                                                        Center(
                                                                      child: Text(
                                                                          '1',
                                                                          style:
                                                                              TextStyle(color: _iconColor1 ? WhiteColor : BlueColor)),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              GestureDetector(
                                                                onTap: () {
                                                                  setState(() {
                                                                    _iconColor1 =
                                                                        false;
                                                                    _iconColor2 =
                                                                        true;
                                                                    _iconColor3 =
                                                                        false;
                                                                    _iconColor4 =
                                                                        false;
                                                                    _iconColor5 =
                                                                        false;
                                                                    _iconColor6 =
                                                                        false;
                                                                    _iconColor7 =
                                                                        false;
                                                                    _iconColor8 =
                                                                        false;
                                                                    _iconColor9 =
                                                                        false;
                                                                    _iconColor10 =
                                                                        false;
                                                                  });
                                                                },
                                                                child: ClipOval(
                                                                  child:
                                                                      Container(
                                                                    color: _iconColor2
                                                                        ? BlueColor
                                                                        : WhiteColor,
                                                                    height:
                                                                        30.0, // height of the button
                                                                    width:
                                                                        30.0, // width of the button
                                                                    child:
                                                                        Center(
                                                                      child: Text(
                                                                          '2',
                                                                          style:
                                                                              TextStyle(color: _iconColor2 ? WhiteColor : BlueColor)),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              GestureDetector(
                                                                onTap: () {
                                                                  setState(() {
                                                                    _iconColor1 =
                                                                        false;
                                                                    _iconColor2 =
                                                                        false;
                                                                    _iconColor3 =
                                                                        true;
                                                                    _iconColor4 =
                                                                        false;
                                                                    _iconColor5 =
                                                                        false;
                                                                    _iconColor6 =
                                                                        false;
                                                                    _iconColor7 =
                                                                        false;
                                                                    _iconColor8 =
                                                                        false;
                                                                    _iconColor9 =
                                                                        false;
                                                                    _iconColor10 =
                                                                        false;
                                                                  });
                                                                },
                                                                child: ClipOval(
                                                                  child:
                                                                      Container(
                                                                    color: _iconColor3
                                                                        ? BlueColor
                                                                        : WhiteColor,
                                                                    height:
                                                                        30.0, // height of the button
                                                                    width:
                                                                        30.0, // width of the button
                                                                    child:
                                                                        Center(
                                                                      child: Text(
                                                                          '3',
                                                                          style:
                                                                              TextStyle(color: _iconColor3 ? WhiteColor : BlueColor)),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              GestureDetector(
                                                                onTap: () {
                                                                  setState(() {
                                                                    _iconColor1 =
                                                                        false;
                                                                    _iconColor2 =
                                                                        false;
                                                                    _iconColor3 =
                                                                        false;
                                                                    _iconColor4 =
                                                                        true;
                                                                    _iconColor5 =
                                                                        false;
                                                                    _iconColor6 =
                                                                        false;
                                                                    _iconColor7 =
                                                                        false;
                                                                    _iconColor8 =
                                                                        false;
                                                                    _iconColor9 =
                                                                        false;
                                                                    _iconColor10 =
                                                                        false;
                                                                  });
                                                                },
                                                                child: ClipOval(
                                                                  child:
                                                                      Container(
                                                                    color: _iconColor4
                                                                        ? BlueColor
                                                                        : WhiteColor,
                                                                    height:
                                                                        30.0, // height of the button
                                                                    width:
                                                                        30.0, // width of the button
                                                                    child:
                                                                        Center(
                                                                      child: Text(
                                                                          '4',
                                                                          style:
                                                                              TextStyle(color: _iconColor4 ? WhiteColor : BlueColor)),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              GestureDetector(
                                                                onTap: () {
                                                                  setState(() {
                                                                    _iconColor1 =
                                                                        false;
                                                                    _iconColor2 =
                                                                        false;
                                                                    _iconColor3 =
                                                                        false;
                                                                    _iconColor4 =
                                                                        false;
                                                                    _iconColor5 =
                                                                        true;
                                                                    _iconColor6 =
                                                                        false;
                                                                    _iconColor7 =
                                                                        false;
                                                                    _iconColor8 =
                                                                        false;
                                                                    _iconColor9 =
                                                                        false;
                                                                    _iconColor10 =
                                                                        false;
                                                                  });
                                                                },
                                                                child: ClipOval(
                                                                  child:
                                                                      Container(
                                                                    color: _iconColor5
                                                                        ? BlueColor
                                                                        : WhiteColor,
                                                                    height:
                                                                        30.0, // height of the button
                                                                    width:
                                                                        30.0, // width of the button
                                                                    child:
                                                                        Center(
                                                                      child: Text(
                                                                          '5',
                                                                          style:
                                                                              TextStyle(color: _iconColor5 ? WhiteColor : BlueColor)),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              GestureDetector(
                                                                onTap: () {
                                                                  setState(() {
                                                                    _iconColor1 =
                                                                        false;
                                                                    _iconColor2 =
                                                                        false;
                                                                    _iconColor3 =
                                                                        false;
                                                                    _iconColor4 =
                                                                        false;
                                                                    _iconColor5 =
                                                                        false;
                                                                    _iconColor6 =
                                                                        true;
                                                                    _iconColor7 =
                                                                        false;
                                                                    _iconColor8 =
                                                                        false;
                                                                    _iconColor9 =
                                                                        false;
                                                                    _iconColor10 =
                                                                        false;
                                                                  });
                                                                },
                                                                child: ClipOval(
                                                                  child:
                                                                      Container(
                                                                    color: _iconColor6
                                                                        ? BlueColor
                                                                        : WhiteColor,
                                                                    height:
                                                                        30.0, // height of the button
                                                                    width:
                                                                        30.0, // width of the button
                                                                    child:
                                                                        Center(
                                                                      child: Text(
                                                                          '6',
                                                                          style:
                                                                              TextStyle(color: _iconColor6 ? WhiteColor : BlueColor)),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              GestureDetector(
                                                                onTap: () {
                                                                  setState(() {
                                                                    _iconColor1 =
                                                                        false;
                                                                    _iconColor2 =
                                                                        false;
                                                                    _iconColor3 =
                                                                        false;
                                                                    _iconColor4 =
                                                                        false;
                                                                    _iconColor5 =
                                                                        false;
                                                                    _iconColor6 =
                                                                        false;
                                                                    _iconColor7 =
                                                                        true;
                                                                    _iconColor8 =
                                                                        false;
                                                                    _iconColor9 =
                                                                        false;
                                                                    _iconColor10 =
                                                                        false;
                                                                  });
                                                                },
                                                                child: ClipOval(
                                                                  child:
                                                                      Container(
                                                                    color: _iconColor7
                                                                        ? BlueColor
                                                                        : WhiteColor,
                                                                    height:
                                                                        30.0, // height of the button
                                                                    width:
                                                                        30.0, // width of the button
                                                                    child:
                                                                        Center(
                                                                      child: Text(
                                                                          '7',
                                                                          style:
                                                                              TextStyle(color: _iconColor7 ? WhiteColor : BlueColor)),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              GestureDetector(
                                                                onTap: () {
                                                                  setState(() {
                                                                    _iconColor1 =
                                                                        false;
                                                                    _iconColor2 =
                                                                        false;
                                                                    _iconColor3 =
                                                                        false;
                                                                    _iconColor4 =
                                                                        false;
                                                                    _iconColor5 =
                                                                        false;
                                                                    _iconColor6 =
                                                                        false;
                                                                    _iconColor7 =
                                                                        false;
                                                                    _iconColor8 =
                                                                        true;
                                                                    _iconColor8 =
                                                                        true;
                                                                    _iconColor9 =
                                                                        false;
                                                                    _iconColor10 =
                                                                        false;
                                                                  });
                                                                },
                                                                child: ClipOval(
                                                                  child:
                                                                      Container(
                                                                    color: _iconColor8
                                                                        ? BlueColor
                                                                        : WhiteColor,
                                                                    height:
                                                                        30.0, // height of the button
                                                                    width:
                                                                        30.0, // width of the button
                                                                    child:
                                                                        Center(
                                                                      child: Text(
                                                                          '8',
                                                                          style:
                                                                              TextStyle(color: _iconColor8 ? WhiteColor : BlueColor)),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              GestureDetector(
                                                                onTap: () {
                                                                  setState(() {
                                                                    _iconColor1 =
                                                                        false;
                                                                    _iconColor2 =
                                                                        false;
                                                                    _iconColor3 =
                                                                        false;
                                                                    _iconColor4 =
                                                                        false;
                                                                    _iconColor5 =
                                                                        false;
                                                                    _iconColor6 =
                                                                        false;
                                                                    _iconColor7 =
                                                                        false;
                                                                    _iconColor8 =
                                                                        false;
                                                                    _iconColor9 =
                                                                        true;
                                                                    _iconColor10 =
                                                                        false;
                                                                  });
                                                                },
                                                                child: ClipOval(
                                                                  child:
                                                                      Container(
                                                                    color: _iconColor9
                                                                        ? BlueColor
                                                                        : WhiteColor,
                                                                    height:
                                                                        30.0, // height of the button
                                                                    width:
                                                                        30.0, // width of the button
                                                                    child:
                                                                        Center(
                                                                      child: Text(
                                                                          '9',
                                                                          style:
                                                                              TextStyle(color: _iconColor9 ? WhiteColor : BlueColor)),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              GestureDetector(
                                                                onTap: () {
                                                                  setState(() {
                                                                    _iconColor1 =
                                                                        false;
                                                                    _iconColor2 =
                                                                        false;
                                                                    _iconColor3 =
                                                                        false;
                                                                    _iconColor4 =
                                                                        false;
                                                                    _iconColor5 =
                                                                        false;
                                                                    _iconColor6 =
                                                                        false;
                                                                    _iconColor7 =
                                                                        false;
                                                                    _iconColor8 =
                                                                        false;
                                                                    _iconColor9 =
                                                                        false;
                                                                    _iconColor10 =
                                                                        true;
                                                                  });
                                                                },
                                                                child: ClipOval(
                                                                  child:
                                                                      Container(
                                                                    color: _iconColor10
                                                                        ? BlueColor
                                                                        : WhiteColor,
                                                                    height:
                                                                        30.0, // height of the button
                                                                    width:
                                                                        30.0, // width of the button
                                                                    child:
                                                                        Center(
                                                                      child: Text(
                                                                          '10',
                                                                          style:
                                                                              TextStyle(color: _iconColor10 ? WhiteColor : BlueColor)),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          )),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              50),
                                                ],
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                20,
                                          ),
                                        ],
                                      )),
                                      Column(
                                        children: <Widget>[
                                          SizedBox(
height: MediaQuery.of(context).size.height/2.2,
                                            child: Container(
                                              
                                            ),
                                          ),
FloatingActionButton(
                                    onPressed: () {},
                                    child: new Icon(
                                      Icons.search,
                                      size: 50.0,
                                      color: RedColor,
                                    ),
                                    backgroundColor: WhiteColor,
                                    foregroundColor: Colors.white54,
                                  )
                                        ],
                                      ),
                                  
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
