import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoForm extends StatefulWidget {
  @override
  _InfoFormState createState() => new _InfoFormState();
}

class _InfoFormState extends State<InfoForm> {
  final _formKey = GlobalKey<FormState>();

  String _title = '';
  String _location = '';
  String _date = '';
  String _stime = '';
  String _etime = '';
  String _description = '';
  bool _autoValidate = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Form(
        key: _formKey,
        autovalidate: _autoValidate,
        child: new Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            margin: EdgeInsets.only(top: 10),
                            child: new SizedBox(
                              height: 25.0,
                              width: 160.0,
                              child: new TextFormField(
                                decoration: new InputDecoration(
                                  labelText: "Title",
                                  fillColor: Colors.white,
                                  border: new OutlineInputBorder(
                                    borderRadius:
                                        new BorderRadius.circular(10.0),
                                    borderSide: new BorderSide(),
                                  ),
                                ),
                                validator: (value) {
                                  if (value.length == 0) {
                                    return "Please enter an event title.";
                                  } else {
                                    return null;
                                  }
                                },
                                keyboardType: TextInputType.text,
                                style: new TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                onSaved: (String value) {
                                  setState(() {
                                    _title = value;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: EdgeInsets.only(top: 10),
                            child: new SizedBox(
                              height: 25.0,
                              width: 160.0,
                              child: new TextFormField(
                                decoration: new InputDecoration(
                                  labelText: "Location",
                                  fillColor: Colors.white,
                                  border: new OutlineInputBorder(
                                    borderRadius:
                                        new BorderRadius.circular(10.0),
                                    borderSide: new BorderSide(),
                                  ),
                                ),
                                validator: (value) {
                                  if (value.length == 0) {
                                    return "Please enter an event location.";
                                  } else {
                                    return null;
                                  }
                                },
                                keyboardType: TextInputType.text,
                                style: new TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                onSaved: (String value) {
                                  setState(() {
                                    _location = value;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: EdgeInsets.only(top: 10),
                            child: new SizedBox(
                              height: 25.0,
                              width: 160.0,
                              child: new TextFormField(
                                decoration: new InputDecoration(
                                  labelText: "Date",
                                  fillColor: Colors.white,
                                  border: new OutlineInputBorder(
                                    borderRadius:
                                        new BorderRadius.circular(10.0),
                                    borderSide: new BorderSide(),
                                  ),
                                ),
                                validator: (value) {
                                  if (value.length == 0) {
                                    return "Please enter event date.";
                                  } else {
                                    return null;
                                  }
                                },
                                keyboardType: TextInputType.datetime,
                                style: new TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                onSaved: (String value) {
                                  setState(() {
                                    _date = value;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: EdgeInsets.only(top: 10),
                            child: new SizedBox(
                              height: 25.0,
                              width: 160.0,
                              child: new TextFormField(
                                decoration: new InputDecoration(
                                  labelText: "Start Time",
                                  fillColor: Colors.white,
                                  border: new OutlineInputBorder(
                                    borderRadius:
                                        new BorderRadius.circular(10.0),
                                    borderSide: new BorderSide(),
                                  ),
                                ),
                                validator: (value) {
                                  if (value.length == 0) {
                                    return "Please enter start time.";
                                  } else {
                                    return null;
                                  }
                                },
                                keyboardType: TextInputType.datetime,
                                style: new TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                onSaved: (String value) {
                                  setState(() {
                                    _stime = value;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: EdgeInsets.only(top: 10),
                            child: new SizedBox(
                              height: 25.0,
                              width: 160.0,
                              child: new TextFormField(
                                decoration: new InputDecoration(
                                  labelText: "End Time",
                                  fillColor: Colors.white,
                                  border: new OutlineInputBorder(
                                    borderRadius:
                                        new BorderRadius.circular(10.0),
                                    borderSide: new BorderSide(),
                                  ),
                                ),
                                validator: (value) {
                                  if (value.length == 0) {
                                    return "Please enter end time.";
                                  } else {
                                    return null;
                                  }
                                },
                                keyboardType: TextInputType.datetime,
                                style: new TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                onSaved: (String value) {
                                  setState(() {
                                    _etime = value;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: new Container(
                            margin: EdgeInsets.only(top: 10),
                            child: new SizedBox(
                              height: 50.0,
                              width: 160.0,
                              child: new TextFormField(
                                decoration: new InputDecoration(
                                  labelText: "Event description",
                                  fillColor: Colors.blueGrey,
                                  border: new OutlineInputBorder(
                                    borderRadius:
                                        new BorderRadius.circular(10.0),
                                    borderSide: new BorderSide(),
                                  ),
                                ),
                                validator: (value) {
                                  if (value.length == 0) {
                                    return "Please enter an event description.";
                                  } else {
                                    return null;
                                  }
                                },
                                keyboardType: TextInputType.multiline,
                                style: new TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 4,
                                onSaved: (String value) {
                                  setState(() {
                                    _description = value;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
            ]),
      ),
    );
  }
}
