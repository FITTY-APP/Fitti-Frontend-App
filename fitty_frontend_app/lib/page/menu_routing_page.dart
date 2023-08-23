import 'package:fitty_frontend_app/page/calendar_menu/calendar_page.dart';
import 'package:fitty_frontend_app/page/home_menu/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class MenuRoutingPage extends StatefulWidget {
  const MenuRoutingPage({
    super.key,
  });

  @override
  State<MenuRoutingPage> createState() => _MenuRoutingPageState();
}

class _MenuRoutingPageState extends State<MenuRoutingPage> {
  int selectedIndex = 0;
  List<Widget> navBarPages = [
    const HomePage(),
    const CalendarPage(),
    const Text('add'),
    const Text('Changes'),
    const Text('MY'),
  ];
  void onBottomNavTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.notifications),
          onPressed: () {
            // Handle the notification button tap here.
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Handle the settings button tap here.
            },
          ),
        ],
        title: const Center(child: Text('FITTY')),
      ),
      body: navBarPages[selectedIndex],
      bottomNavigationBar: NavigationBar(
          height: 60,
          backgroundColor: Colors.white,
          onDestinationSelected: onBottomNavTap,
          selectedIndex: selectedIndex,
          destinations: <Widget>[
            const NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            const NavigationDestination(
              icon: Icon(Icons.calendar_month),
              label: 'Calendar',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () => onBottomNavTap(2),
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                    padding: const EdgeInsets.all(8.0),
                    margin: EdgeInsets.all(5),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
            const NavigationDestination(
              icon: Icon(Icons.area_chart_outlined),
              label: 'Changes',
            ),
            const NavigationDestination(
              icon: Icon(Icons.abc),
              label: 'MY',
            ),
          ]),
    );
  }
}
