import 'package:flutter/material.dart';

class TutoGridCell extends StatelessWidget
{
  final String _route;
  final String _name;
  final IconData _icon;
  final BuildContext _ctx;

  const TutoGridCell(
      this._ctx,
      this._name,
      this._icon,
      this._route );

  @override
  Widget build(BuildContext ctx) {
    return Card(
      elevation: 1.0,
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          Navigator.pushNamed(_ctx, _route);
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