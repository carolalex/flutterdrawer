import 'package:appdrawer/notification.dart';
import 'package:appdrawer/termsandconditions.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  int _selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Drawer"),
      ),
      drawer: Padding(
        padding: const EdgeInsets.only(bottom: 57.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.purple,
              width: 2,
            ),
          ),
          child: Drawer(
            shadowColor: Colors.purple,
            elevation: 50,
            child: ListView(
              children: [
                DrawerHeader(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.close))
                    ],
                  ),
                ),
                ListTile(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 0;
                    });
                  },
                  tileColor: _selectedIndex == 0 ? Colors.brown.shade50 : null,
                  title: const Text(
                    "How I'm Paid",
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ),
                ListTile(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Notify()),
                    );
                  },
                  tileColor: _selectedIndex == 1 ? Colors.brown.shade50 : null,
                  title: const Text(
                    "Notification Settings",
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ),
                ListTile(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 2;
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TermsandConditions()),
                    );
                  },
                  tileColor: _selectedIndex == 2 ? Colors.brown.shade50 : null,
                  title: const Text(
                    "Terms & Conditions",
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ),
                ListTile(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 3;
                    });
                  },
                  tileColor: _selectedIndex == 3 ? Colors.brown.shade50 : null,
                  title: const Text(
                    "Help Center",
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ),
                ListTile(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 4;
                    });
                  },
                  tileColor: _selectedIndex == 4 ? Colors.brown.shade50 : null,
                  title: const Text(
                    "Contact us",
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ),
                ListTile(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 5;
                    });
                  },
                  tileColor: _selectedIndex == 5 ? Colors.brown.shade50 : null,
                  title: const Text(
                    "About Shoppyist",
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ),
                ListTile(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 6;
                    });
                  },
                  tileColor: _selectedIndex == 6 ? Colors.brown.shade50 : null,
                  title: const Text(
                    "About my impact score",
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ),
                ListTile(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 7;
                    });
                  },
                  tileColor: _selectedIndex == 7 ? Colors.brown.shade50 : null,
                  title: const Text(
                    "Our Data",
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ),
                ListTile(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 8;
                    });
                  },
                  tileColor: _selectedIndex == 8 ? Colors.brown.shade50 : null,
                  title: const Text(
                    "Our Methodology",
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 50.0, left: 20.0, right: 20.0, bottom: 20.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      minimumSize: const Size(100, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "Refer a Friend",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.purple,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.white),
            label: "",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.diamond_outlined, color: Colors.white),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.white), label: ""),
        ],
      ),
    );
  }
}
