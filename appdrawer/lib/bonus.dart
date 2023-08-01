import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Bonuses extends StatefulWidget {
  const Bonuses({super.key});

  @override
  State<Bonuses> createState() => _BonusesState();
}

class _BonusesState extends State<Bonuses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(150), child: CustomAppbar()),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset("images/Group 60.png"),
          const Text(
            "Unlimited Bonuses",
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.purple),
          ),
          const Text("Get \$30 for every friend you refer"),
          const Text("They'll get \$30, too."),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                enabled: false,
                onSaved: (value) {},
                decoration: const InputDecoration(
                  labelText: '  https:www.shoppyist.com/s/DAVID23',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          const Text(
            "Share link via",
            style: TextStyle(color: Colors.grey),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('images/twitter.jpg'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('images/google.jpg'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('images/link.jpg'),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 10.0),
            child: Text(
              "Terms & Conditions *",
              style:
                  TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
            ),
          )
        ],
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

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AppBar(
          centerTitle: true,
          title: Text("Shoppist"),
          backgroundColor: Colors.purple,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        const Positioned(
          bottom: 70,
          left: 20,
          child: Text(
            "Refer & Earn",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
        Positioned(
          bottom: 30,
          left: 25,
          child: Image.asset("images/first.png"),
        ),
        const Positioned(
          bottom: 10,
          left: 15,
          child: Text(
            "Sign up",
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
        ),
        const Positioned(
          bottom: 10,
          left: 165,
          child: Text(
            "Shop",
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
        ),
        const Positioned(
          bottom: 10,
          right: 15,
          child: Text(
            "Cash Back",
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
        )
      ],
    );
  }
}
