import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
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
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 50, bottom: 20),
            child: Text(
              "My Profile",
              style: TextStyle(
                  color: Colors.purple,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  width: 320,
                  height: 450,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Positioned(
                top: 20,
                left: 30,
                child: CircleAvatar(
                  backgroundColor: Colors.grey.shade300,
                  radius: 50,
                  child: const Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Icon(
                          FontAwesomeIcons.pencil,
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          "Add Photo",
                          style: TextStyle(color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Positioned(top: 30, right: 50, child: Text("Edit")),
              Positioned(
                top: 150,
                left: 30,
                child: Container(
                  width: 130,
                  height: 70,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                "First Name",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                "David",
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 150,
                right: 30,
                child: Container(
                  width: 130,
                  height: 70,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                "Last Name",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                "Miller",
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 240,
                left: 30,
                child: Container(
                  width: 180,
                  height: 70,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                "Date of Birth",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                "14/11/1997",
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 330,
                left: 30,
                child: Container(
                  width: 180,
                  height: 90,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                "Mailing Address",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                "1/4,Redstreet",
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                "New York",
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
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
