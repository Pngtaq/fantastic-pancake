import 'package:fantastic_pancake/data/notifiers.dart';
import 'package:fantastic_pancake/views/pages/home_page.dart';
import 'package:fantastic_pancake/views/pages/profile_page.dart';
import 'package:fantastic_pancake/widgets/navbar_widget.dart';
import 'package:flutter/material.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fantastic Pancake"),
        actions: [
          IconButton(
            onPressed: () {
              isDarkMode.value = !isDarkMode.value;
            },
            icon: ValueListenableBuilder(
              valueListenable: isDarkMode,
              builder: (context, value, child) {
                return Icon(value ? Icons.dark_mode : Icons.light_mode);
              },
            ),
          ),
        ],
      ),

      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,

        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
