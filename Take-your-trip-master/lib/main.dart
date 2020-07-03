import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import 'package:flutter/foundation.dart';
import 'package:numberpicker/numberpicker.dart';
import 'dart:convert';

void main() => runApp(MyApp());

const WhiteColor = const Color(0xFFFFFFFF);
const GreyColor = const Color(0xFFBABCEF);
const BlueColor = const Color(0xFF00245A);
const RedColor = const Color(0xFFE40043);
Color hexToColor(String code) {
  return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        fontFamily: 'RobotoMono',
        primarySwatch: Colors.blue,
      ),
      home: DetailsPage(),
    );
  }
}

class DetailsPage extends StatefulWidget {
  DetailsPage({Key key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  var _iconColor = false;
  var gen = "Mr";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('ENTER DETAILS'),
          ),
          backgroundColor: BlueColor,
        ),
        body: ListView(
          children: <Widget>[
            SizedBox(
              width: 200.0,
              height: 40,
              child: Container(
                color: BlueColor,
              ),
            ),
            Container(
              color: BlueColor,
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Text(
                      'Would you like to take insurance\n(Rs 249.00 per person?',
                      style: TextStyle(color: WhiteColor)),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (_iconColor)
                          _iconColor = false;
                        else
                          _iconColor = true;
                      });
                    },
                    child: ClipOval(
                      child: Container(
                        color: _iconColor ? BlueColor : RedColor,
                        height: 30.0, // height of the button
                        width: 30.0, // width of the button
                        child: Center(
                          child:
                              Text('Yes', style: TextStyle(color: WhiteColor)),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (_iconColor)
                          _iconColor = false;
                        else
                          _iconColor = true;
                      });
                    },
                    child: ClipOval(
                      child: Container(
                        color: _iconColor ? RedColor : BlueColor,
                        height: 30.0, // height of the button
                        width: 30.0, // width of the button
                        child: Center(
                          child:
                              Text('No', style: TextStyle(color: WhiteColor)),
                        ),

                      ),
                    ),
                  ),
                  new Padding(padding: EdgeInsets.only(bottom: 50.0)), ],
              ),
            ),
            new Material(
                child: new Container (
                    padding: const EdgeInsets.all(10.0),
                    color: Colors.white,
                    child: new Container(
                      child: new Center(
                          child: new Column(
                              children : [

                                new Text('Please fill in the details',
                                  style: new TextStyle(color: RedColor,fontFamily: "Poppins", fontSize: 18.0),),
                                new Padding(padding: EdgeInsets.only(top: 10.0)),
                                new TextFormField(
                                  decoration: new InputDecoration(
                                    labelText: "Your Email ID",
                                    fillColor: Colors.white,
                                    border: new OutlineInputBorder(
                                      borderRadius: new BorderRadius.circular(25.0),
                                      borderSide: new BorderSide(
                                      ),
                                    ),
                                  ),
                                  validator: (val) {
                                    if(val.length==0) {
                                      return "Email cannot be empty";
                                    }else{
                                      return null;
                                    }
                                  },
                                  keyboardType: TextInputType.emailAddress,
                                  style: new TextStyle(
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              ]
                          )
                      ),
                    )
                )
            ),

            SizedBox(
              width: 200.0,
              height: 10,
              child: Container(
                color: WhiteColor,
              ),
            ),
            SizedBox(
              width: 200.0,
              height: 10,
              child: Container(
                color: WhiteColor,
              ),
            ),
           Row(

              children : <Widget>[
              new Padding(padding: EdgeInsets.only(left: 20.0)),
               Text('Choose number of passengers', style: TextStyle(fontSize:20,color: RedColor)),
                new NumberPicker.integer(

                  initialValue: 50,
                  minValue: 0,
                  maxValue: 100,
                ),
  ],),

            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 10,
              child: Container(
                color: WhiteColor,
              ),
            ),
            Row(
            children : <Widget>[

              ],
            ),
            Row(
              children: <Widget>[
                Text('  1.', style: TextStyle(color: RedColor)),
                SizedBox(
                  height: 50,
                  child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        if (gen == 'Mr')
                          gen = 'Mrs';
                        else
                          gen = 'Mr';
                      });
                    },
                    padding: EdgeInsets.all(12),
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(5),
                    ),
                    color: BlueColor,
                    child: Text(gen, style: TextStyle(color: Colors.white)),
                  ),
                ),
                new Flexible(
                  child: TextFormField(
                    maxLines: 1,
                    keyboardType: TextInputType.text,
                    autofocus: false,
                    decoration: new InputDecoration(
                        contentPadding: new EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 10.0),
                        hintText: 'Dhruv Shetty',
                        errorStyle: TextStyle(
                          color: BlueColor,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: BlueColor, width: 5.0),
                        )),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 10,
              child: Container(
                color: WhiteColor,
              ),
            ),
            Row(
              children: <Widget>[
                Text(' 2.  ', style: TextStyle(color: RedColor)),
                Flexible(
                    child: DottedBorder(
                  color: BlueColor,
                  strokeWidth: 3,
                  child: TextFormField(
                    maxLines: 1,
                    keyboardType: TextInputType.text,
                    autofocus: false,
                    decoration: new InputDecoration(
                      errorStyle: TextStyle(
                        color: BlueColor,
                      ),
                    ),
                  ),
                )),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 10,
              child: Container(
                color: WhiteColor,
              ),
            ),
            Text('    address', style: TextStyle(color: RedColor)),
            Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width / 18,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.1,
                  decoration: BoxDecoration(
                    color: BlueColor,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Card(
                      semanticContainer: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: WhiteColor,
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(10.0, 15.0, 0.0, 0.0),
                        child: TextField(
                          decoration: InputDecoration.collapsed(hintText: ''),
                          maxLines: 5,
                        ),
                      )),
                ),
              ],
            ),
            SizedBox(
              width: 200.0,
              height: 10,
              child: Container(
                color: WhiteColor,
              ),
            ),
            Text('      phone number', style: TextStyle(color: RedColor)),
            SizedBox(
              width: 200.0,
              height: 10,
              child: Container(
                color: WhiteColor,
              ),
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  height: 50,
                  width: 10,
                  child: Container(),
                ),
                SizedBox(
                  height: 50,
                  child: RaisedButton(
                    onPressed: () {},
                    padding: EdgeInsets.all(12),
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(5),
                    ),
                    color: BlueColor,
                    child: Text('91+', style: TextStyle(color: Colors.white)),
                  ),
                ),
                new Flexible(
                  child: TextFormField(
                    maxLines: 1,
                    keyboardType: TextInputType.text,
                    autofocus: false,
                    decoration: new InputDecoration(
                        contentPadding: new EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 10.0),
                        hintText: '',
                        errorStyle: TextStyle(
                          color: BlueColor,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: BlueColor, width: 5.0),
                        )),
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: 10,
                  child: Container(),
                ),
              ],
            ),
            SizedBox(
              width: 200.0,
              height: 20,
              child: Container(
                color: WhiteColor,
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width / 16,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: 100.0,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  SelectTicket()));
                    },
                    color: RedColor,
                    child: Row(
                      children: <Widget>[
                        Center(
                          widthFactor: MediaQuery.of(context).size.width / 50,
                          child: Text('NEXT',
                              style: TextStyle(color: Colors.white)),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ));
  }
}

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

class CalenderPage extends StatefulWidget {
  CalenderPage({Key key}) : super(key: key);

  @override
  _CalenderPageState createState() => _CalenderPageState();
}

class _CalenderPageState extends State<CalenderPage> {
  var image;
  var _iconColor = false;

  void initState() {
    super.initState();
    image = Image.asset('lib/Assets/wiry.png');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SingleChildScrollView(
      child: Container(
        
        width: MediaQuery.of(context).size.width,
        color: BlueColor,
        child: Column(
          children: <Widget>[
            image,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ClipOval(
                  child: Container(
                    color: _iconColor ? BlueColor : RedColor,
                    height: 50.0, // height of the button
                    width: 40.0, // width of the button
                    child: Center(
                      child: RotatedBox(
                        quarterTurns: 1,
                        child: IconButton(
                          icon: Icon(
                            Icons.airplanemode_active,
                            color: WhiteColor,
                          ),
                          onPressed: () {
                            setState(() {
                              if (_iconColor)
                                _iconColor = false;
                              else
                                _iconColor = true;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                ClipOval(
                  child: Container(
                    color: _iconColor ? RedColor : BlueColor,
                    height: 50.0, // height of the button
                    width: 40.0, // width of the button
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
                              if (_iconColor)
                                _iconColor = false;
                              else
                                _iconColor = true;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
                width: MediaQuery.of(context).size.width / 1.1,
                decoration: new BoxDecoration(
                  borderRadius:
                      new BorderRadius.all(const Radius.circular(40.0)),
                  color: RedColor,
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        RaisedButton(
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(18.0),
                              side: BorderSide(color: WhiteColor)),
                          onPressed: () {},
                          color: WhiteColor,
                          textColor: RedColor,
                          child:
                              Text('One Way', style: TextStyle(fontSize: 14)),
                        ),
                        RaisedButton(
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(18.0),
                              side: BorderSide(color: WhiteColor)),
                          onPressed: () {},
                          color: WhiteColor,
                          textColor: RedColor,
                          child: Text('Round trip',
                              style: TextStyle(fontSize: 14)),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 50),
                        Row(
                          children: <Widget>[

                            SizedBox(
                                width: MediaQuery.of(context).size.width / 15),
                            new Padding(padding: EdgeInsets.only(left: 25.0)),
                            Text('FROM',
                                style:
                                    TextStyle(fontSize: 14, color: WhiteColor)),
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 2),
                            Text('TO',
                                style:
                                    TextStyle(fontSize: 14, color: WhiteColor)),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 60),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 50),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Container(
                                    width:
                                        MediaQuery.of(context).size.width / 3,
                                    height:
                                        MediaQuery.of(context).size.width / 5,
                                    decoration: new BoxDecoration(

                                      borderRadius: new BorderRadius.all(
                                          const Radius.circular(30.0)),
                                      color: WhiteColor,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text('BOM',
                                            style: new TextStyle(
                                                color: BlueColor,
                                                fontSize: 30)),

                                        Align(
                                          alignment: Alignment.center,
                                          child: Text(
                                            '\t\t\t Chatrapati Shivaji \t\t\t\t Intl,Mumbai India',
                                              style: new TextStyle(

                                                  color: BlueColor)),
                                        ),
                                      ],
                                    )),
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
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Container(
                                    width:
                                        MediaQuery.of(context).size.width / 3,
                                    height:
                                        MediaQuery.of(context).size.width / 5,
                                    decoration: new BoxDecoration(
                                      borderRadius: new BorderRadius.all(
                                          const Radius.circular(30.0)),
                                      color: WhiteColor,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        Text('BOM',
                                            style: new TextStyle(
                                                color: BlueColor,
                                                fontSize: 30)),
                                        Center(
                                          widthFactor: 0,
                                          child: Text(
                                              '\t\t\t Chatrapati Shivaji \t\t\t\t Intl,Mumbai India',
                                              style: new TextStyle(
                                                  color: BlueColor)),
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 50),
                          ],
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 50),
                        Row(
                          children: <Widget>[
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 15),
                            Text('date of journey',
                                style:
                                    TextStyle(fontSize: 14, color: WhiteColor)),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 60),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    width: MediaQuery.of(context).size.width /
                                        1.13,
                                    height:
                                        MediaQuery.of(context).size.width / 10,
                                    decoration: new BoxDecoration(
                                      borderRadius: new BorderRadius.all(
                                          const Radius.circular(40.0)),
                                      color: WhiteColor,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(' 12/03/2020',
                                            style: new TextStyle(
                                                color: BlueColor,
                                                fontSize: 20)),
                                        Icon(Icons.calendar_today),
                                      ],
                                    )),
                              ],
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 50),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height / 50),
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 10),
                            Text('no. of travellers',
                                style:
                                    TextStyle(fontSize: 14, color: WhiteColor)),
                            
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 60),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    width: MediaQuery.of(context).size.width /
                                        1.13,
                                    height:
                                        MediaQuery.of(context).size.width / 10,
                                    decoration: new BoxDecoration(
                                      borderRadius: new BorderRadius.all(
                                          const Radius.circular(40.0)),
                                      color: WhiteColor,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        
                                      ],
                                    )),
                              ],
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 50),
                          ],),
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),),
    );
  }
}
