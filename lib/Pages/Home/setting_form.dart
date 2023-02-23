import 'package:flutter/material.dart';
import 'package:smoothie/Shared/constant.dart';

class SettingForm extends StatefulWidget {
  const SettingForm({Key? key}) : super(key: key);

  @override
  _SettingFormState createState() => _SettingFormState();
}

class _SettingFormState extends State<SettingForm> {
  final _fromKey = GlobalKey<FormState>();
  final List<String> flavours = [
    'Vanilla',
    'strawberry',
    'chocolate',
    'caramel',
    'banana',
    'mint'
  ];

  // form values

  late String _currentName;
  late String? _currentFlavours;
  int? _currentStrength;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _fromKey,
        child: Column(
          children: [
            Text(
              "Update your smoothie",
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 20.0),
            TextFormField(
                decoration:
                    textDecoration.copyWith(hintText: "Enter your name"),
                validator: (val) => val!.isEmpty ? 'please enter name' : null,
                onChanged: (val) => setState(() {
                      _currentName = val;
                    })),
            //dropdown
            SizedBox(height: 20.0),
            DropdownButtonFormField(
              decoration: textDecoration,
              // value: _currentFlavours ?? 'Choose Flavour',
              items: flavours.map((flavour) {
                return DropdownMenuItem(
                  value: flavour,
                  child: Text('${flavour} flavour'),
                );
              }).toList(),
              onChanged: (val) => setState(() => _currentFlavours = val),
            ),

            //slider
            Slider(
                value: (_currentStrength ?? 100).toDouble(),
                activeColor: Colors.green[_currentStrength ?? 100],
                inactiveColor: Colors.green[_currentStrength ?? 100],
                min: 100.0,
                max: 900.0,
                divisions: 8,
                onChanged: (val) => setState(() {
                      _currentStrength = val.round();
                    })),

            SizedBox(height: 20.0),
            TextButton(
              onPressed: () async {
                print(_currentName);
                print(_currentFlavours);
                print(_currentStrength);
              },
              child: Text(
                'Update',
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 11, 124, 64)),
            ),
          ],
        ));
  }
}
