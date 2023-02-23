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
  late int _currentStrength;

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
                obscureText: true,
                validator: (val) => val!.isEmpty ? 'please enter name' : null,
                onChanged: (val) => setState(() {
                      _currentName = val;
                    })),
            //dropdown
            SizedBox(height: 20.0),
            DropdownButtonFormField(
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
            SizedBox(height: 20.0),
            TextButton(
              onPressed: () async {
                print(_currentName);
                print(_currentFlavours);
                // print(_currentStrength);
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
