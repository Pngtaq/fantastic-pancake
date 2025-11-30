import "package:flutter/material.dart";

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,

        children: [
          Image.asset("assets/brain-logo.png", height: 300, width: 300),

          Text(
            "MD Brain Rot",
            style: TextStyle(color: Colors.white, fontSize: 40),
          ),
          SizedBox(height: 6),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              side: BorderSide(color: Colors.white),
            ),
            onPressed: startQuiz,
            icon: Icon(Icons.play_arrow, color: Colors.white),
            label: Text("Start Quiz", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
