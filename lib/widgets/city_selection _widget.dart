import 'package:flutter/material.dart';

class CitySelectionWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CitySelectionWidgetState();
}

class _CitySelectionWidgetState extends State<CitySelectionWidget> {
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        shadowColor: Colors.orange,
        backgroundColor: const Color.fromRGBO(240, 248, 255, 1),
        title: const Text('Поиск'),
        titleTextStyle: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.normal, fontSize: 20),
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: Form(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: TextFormField(
                  controller: _textController,
                  decoration: const InputDecoration(
                    labelText: 'Город',
                    hintText: 'Северодвинск',
                  ),
                  onFieldSubmitted: (String value) async {
                    Navigator.pop(context, _textController.text);
                  },
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                Navigator.pop(context, _textController.text);
              },
            )
          ],
        ),
      ),
    );
  }
}
