import 'package:flutter/material.dart';

class CardSimple extends StatelessWidget {
  final String title;
  CardSimple({ Key key, this.title}): super(key : key);
  
  @override
  Widget build(BuildContext context) {
    
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(              
              title: Text(this.title),
              subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('BUY TICKETS'),
                  onPressed: (){},
                ),
                FlatButton(
                  child: const Text('LISTEN'),
                  onPressed: (){},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}