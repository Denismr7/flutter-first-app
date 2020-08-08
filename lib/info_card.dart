import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  const AppCard({
    Key key,
    @required this.myText,
    @required TextEditingController textController,
  })  : _textController = textController,
        super(key: key);

  final String myText;
  final TextEditingController _textController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Card(
          child: Column(
            children: <Widget>[
              Image.asset("assets/bg.jpg"),
              SizedBox(height: 20),
              Text(
                myText,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: _textController,
                  decoration: InputDecoration(
                    hintText: "Enter some text",
                    labelText: "Name",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
