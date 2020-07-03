import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:airplane/main.dart';
import 'package:airplane/pages/selectPlane.dart';

import 'package:flutter/foundation.dart';

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
                ],
              ),
            ),
            SizedBox(
              width: 200.0,
              height: 40,
              child: Container(
                color: BlueColor,
              ),
            ),
            SizedBox(
              width: 200.0,
              height: 10,
              child: Container(
                color: WhiteColor,
              ),
            ),
            Text('   PERSONAL DETAILS', style: TextStyle(color: RedColor)),
            SizedBox(
              width: 200.0,
              height: 10,
              child: Container(
                color: WhiteColor,
              ),
            ),
            Text('    name of passenger', style: TextStyle(color: RedColor)),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 10,
              child: Container(
                color: WhiteColor,
              ),
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
