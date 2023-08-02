import 'package:appdrawer/myprofile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          backgroundColor: Colors.purple,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(FontAwesomeIcons.arrowLeftLong),
          ),
          centerTitle: true,
          title: const Text('Shoppyist'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(FontAwesomeIcons.list),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: Text(
                "Contact Us",
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
              child: Container(
                height: 50,
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
                  onSaved: (value) {},
                  decoration: const InputDecoration(
                    labelText: '  Name',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
              child: Container(
                height: 50,
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
                  onSaved: (value) {},
                  decoration: const InputDecoration(
                    labelText: '  Email',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
              child: Container(
                height: 120,
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
                    labelText: '  Write your message',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyProfile(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  minimumSize: const Size(320, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  "Send",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
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
