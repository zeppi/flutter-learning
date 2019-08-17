import 'package:flutter/material.dart';

class TutoGridCell extends StatelessWidget
{
  final String _route;
  final String _name;
  final IconData _icon;

  const TutoGridCell(
      this._name,
      this._icon,
      this._route, { Key key }) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return Card(
      elevation: 1.0,
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          Navigator.pushNamed(ctx, _route);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            Center(child: Icon(_icon)),
            Center(child: Text(_name)),
          ],
        ),
      ),
    );
  }
}