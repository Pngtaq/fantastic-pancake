import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
              controller: controller,
              onChanged: (String text) {
                setState(() {
                  // The setState call tells Flutter to rebuild the UI
                  // with the controller's latest text.
                });
              },
            ),
            Text(controller.text),
            Checkbox(
              tristate: true,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            CheckboxListTile(
              tristate: true,
              title: Text("Click me"),
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                  print(isChecked);
                });
              },
            ),
            Switch(
              value: isSwitched,
              onChanged: (bool value) {
                setState(() {
                  isSwitched = value;
                  print(isSwitched);
                });
              },
            ),
            SwitchListTile.adaptive(
              title: Text("hello"),
              value: isSwitched,
              onChanged: (bool value) {
                setState(() {
                  isSwitched = value;
                  print(isSwitched);
                });
              },
            ),
            Slider(
              value: sliderValue,
              max: 10,
              divisions: 10,
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                  print(sliderValue);
                });
              },
            ),
            InkWell(
              splashColor: Colors.teal,
              onTap: () {
                print("hello");
              },
              child: Container(
                height: 500,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
