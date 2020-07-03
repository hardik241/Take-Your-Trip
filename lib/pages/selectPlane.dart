import 'package:flutter/material.dart';
import 'package:airplane/main.dart';
import 'package:airplane/pages/calenderPage.dart';
import 'package:flutter/foundation.dart';
import 'dart:convert';

class SelectTicket extends StatefulWidget {
  SelectTicket({Key key}) : super(key: key);

  @override
  _SelectTicketState createState() => _SelectTicketState();
}

class _SelectTicketState extends State<SelectTicket> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: BlueColor,
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.edit,
                color: Colors.white,
              ),
              tooltip: 'Air it',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => CalenderPage()));
              },
            )
          ],
          title: new Text(
            "1 Adult",
            style: new TextStyle(color: WhiteColor),
          ),
        ),
        body: new Container(
            child: Column(
          children: <Widget>[
            Container(
              color: BlueColor,
              height: MediaQuery.of(context).size.height / 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height / 29,
                      ),
                      Text('BOM',
                          style:
                              new TextStyle(color: WhiteColor, fontSize: 30)),
                      Text('Mumbai,in',
                          style: new TextStyle(color: WhiteColor)),
                    ],
                  ),
                  RotatedBox(
                    quarterTurns: 1,
                    child: IconButton(
                      icon: Icon(
                        Icons.airplanemode_active,
                        color: WhiteColor,
                      ),
                      onPressed: null,
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height / 29,
                      ),
                      Text('BLR',
                          style:
                              new TextStyle(color: WhiteColor, fontSize: 30)),
                      Text('Banglore,in',
                          style: new TextStyle(color: WhiteColor)),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: BlueColor,
              height: MediaQuery.of(context).size.height / 30,
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    color: WhiteColor,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 7,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: BlueColor,
                          ),
                          tooltip: 'Air it',
                          onPressed: () {},
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              height: MediaQuery.of(context).size.height / 30,
                            ),
                            Text('11',
                                style: new TextStyle(
                                    color: BlueColor, fontSize: 30)),
                            Text('MON', style: new TextStyle(color: BlueColor)),
                          ],
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 8,
                          width: MediaQuery.of(context).size.height / 15,
                          color: RedColor,
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: MediaQuery.of(context).size.height / 30,
                              ),
                              Text('12',
                                  style: new TextStyle(
                                      color: BlueColor, fontSize: 30)),
                              Text('TUE',
                                  style: new TextStyle(color: BlueColor)),
                            ],
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              height: MediaQuery.of(context).size.height / 30,
                            ),
                            Text('13',
                                style: new TextStyle(
                                    color: BlueColor, fontSize: 30)),
                            Text('WED', style: new TextStyle(color: BlueColor)),
                          ],
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.arrow_forward,
                            color: BlueColor,
                          ),
                          tooltip: 'Air it',
                          onPressed: () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: WhiteColor,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                        side: BorderSide(color: WhiteColor)),
                    onPressed: () {},
                    color: WhiteColor,
                    textColor: RedColor,
                    child: Text('Cheapest', style: TextStyle(fontSize: 14)),
                  ),
                  RaisedButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.red)),
                    onPressed: () {},
                    color: RedColor,
                    textColor: Colors.white,
                    child: Text('Earliest', style: TextStyle(fontSize: 14)),
                  ),
                  RaisedButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                        side: BorderSide(color: WhiteColor)),
                    onPressed: () {},
                    color: WhiteColor,
                    textColor: RedColor,
                    child: Text('Fastest', style: TextStyle(fontSize: 14)),
                  ),
                  ClipOval(
                    child: Container(
                      color: RedColor,
                      height: MediaQuery.of(context).size.height /
                          25, // height of the button
                      width: MediaQuery.of(context).size.width /
                          15, // width of the button
                      child: Center(
                        child: IconButton(
                          icon: Icon(
                            Icons.accessibility_new,
                            color: WhiteColor,
                          ),
                          tooltip: 'Air it',
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              child: new Center(
                // Use future builder and DefaultAssetBundle to load the local JSON file
                child: new FutureBuilder(
                    future: DefaultAssetBundle.of(context)
                        .loadString('lib/json/ticket.json'),
                    builder: (context, snapshot) {
                      List<Plane> countries =
                          parseJosn(snapshot.data.toString());
                      return countries.isNotEmpty
                          ? new PlaneList(country: countries)
                          : new Center(child: new CircularProgressIndicator());
                    }),
              ),
            )
          ],
        )));
  }

  List<Plane> parseJosn(String response) {
    if (response == null) {
      return [];
    }
    final parsed =
        json.decode(response.toString()).cast<Map<String, dynamic>>();
    return parsed.map<Plane>((json) => new Plane.fromJson(json)).toList();
  }
}

class Plane {
  final String departure;
  final String arrival;
  final String type;
  final String time;
  final String arriTime;
  final String departTime;
  final String price;
  final String flightName;

  Plane(
      {this.departure,
      this.arrival,
      this.type,
      this.time,
      this.arriTime,
      this.departTime,
      this.price,
      this.flightName});

  factory Plane.fromJson(Map<String, dynamic> json) {
    return new Plane(
      departure: json['departure'] as String,
      arrival: json['arrival'] as String,
      type: json['type'] as String,
      time: json['time'] as String,
      arriTime: json['arri_time'] as String,
      departTime: json['depart_time'] as String,
      price: json['price'] as String,
      flightName: json['flight_name'] as String,
    );
  }
}

class PlaneList extends StatelessWidget {
  final List<Plane> country;
  PlaneList({Key key, this.country}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: country.length,
        itemBuilder: (BuildContext context, int index) {
          return new Card(
            child: new Container(
              child: new Center(
                  child: new Column(
                // Stretch the cards in horizontal axis
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      new Text(
                        // Read the name field value and set it in the Text widget
                        country[index].flightName,
                        // set some style to text
                        style: new TextStyle(fontSize: 15.0, color: BlueColor),
                      ),
                      Container(
                        color: BlueColor,
                        height: MediaQuery.of(context).size.height / 6,
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(country[index].arriTime,
                                        style: new TextStyle(
                                          color: WhiteColor,
                                        )),
                                    Text(country[index].arrival,
                                        style:
                                            new TextStyle(color: WhiteColor)),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(country[index].type,
                                        style: new TextStyle(
                                          color: WhiteColor,
                                        )),
                                    Text('---------------------',
                                        style: new TextStyle(
                                          color: WhiteColor,
                                        )),
                                    Text(country[index].time,
                                        style:
                                            new TextStyle(color: WhiteColor)),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(country[index].departTime,
                                        style: new TextStyle(
                                          color: WhiteColor,
                                        )),
                                    Text(country[index].departure,
                                        style:
                                            new TextStyle(color: WhiteColor)),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  color: BlueColor,
                                  width:
                                      MediaQuery.of(context).size.width / 2.5,
                                ),
                                Row(
                                  children: <Widget>[
                                    RaisedButton(
                                      shape: new RoundedRectangleBorder(
                                          borderRadius:
                                              new BorderRadius.circular(18.0),
                                          side: BorderSide(color: Colors.red)),
                                      onPressed: () {},
                                      color: RedColor,
                                      textColor: Colors.white,
                                      child: Text(country[index].price,
                                          style: TextStyle(fontSize: 14)),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              )),
              padding: const EdgeInsets.all(15.0),
            ),
          );
        });
  }
}
