import 'package:flutter/material.dart';

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(
      title: 'Tacos, at M-232, 04/01/20, 12:30AM to 3:30PM, chicken/beef/meatless',
      icon: Icons.fastfood),
  const Choice(
      title: 'Free Pizza, at B-110, 04/01/20, 2:00AM to 4:00PM, limit: 1 slice per person',
      icon: Icons.local_pizza),
  const Choice(
      title: 'Clothing for the needy, at A-127, 04/01/20, 3:00PM to 5:00PM, one set of clothing per person',
      icon: Icons.store),
  const Choice(
      title: 'Sign up for CalFresh, at Gym, 04/02/20, 10:00 to 4:00, Bring ID and income documents',
      icon: Icons.home),
  const Choice(
      title: 'Emergency Lunch Program, at B-200, 04/02/2020, 12:00PM to 4:00, free lunch with student ID',
      icon: Icons.free_breakfast),
  const Choice(
      title: 'Free hygiene products, at School Clinic, 04/02/202, 1:00PM to 5:00PM',
      icon: Icons.store),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard(
      {Key key,
      this.choice,
      this.onTap,
      @required this.item,
      this.selected: false})
      : super(key: key);

  final Choice choice;
  final VoidCallback onTap;
  final Choice item;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.display1;
    if (selected)
      textStyle = textStyle.copyWith(color: Colors.lightGreenAccent[400]);
    return Card(
        color: Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Container(
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.topLeft,
              child: Icon(
                choice.icon,
                size: 80.0,
                color: textStyle.color,
              ),
            ),
            new Expanded(
              child: new Container(
                padding: const EdgeInsets.all(10.0),
                alignment: Alignment.topLeft,
                child: Text(
                  choice.title,
                  style: null,
                  textAlign: TextAlign.left,
                  maxLines: 5,
                ),
              ),
            ),
          ],

        ),
    );
  }
}
