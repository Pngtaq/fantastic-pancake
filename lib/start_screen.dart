import "package:flutter/material.dart";

class StartScreen extends StatelessWidget {
  const StartScreen(this.switchScreen, {super.key});
  final void Function() switchScreen;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/brain-logo.png"),
          Text(
            "MD Brain Rot",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          OutlinedButton.icon(
            onPressed: switchScreen,
            icon: Icon(Icons.arrow_right_alt, color: Colors.white),
            label: Text("StartQuiz", style: TextStyle(color: Colors.white)),
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              side: BorderSide(color: Colors.white),
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
