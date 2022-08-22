import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int menu_index = 0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const Header(),
            SizedBox(
              height: width * 0.1,
            ),
            SizedBox(
                height: height * 0.25,
                width: width,
                child: Card(
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 30),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Total balance",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 18),
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.notifications_active,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: width * 0.05,
                                ),
                                const CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2016/11/22/21/42/woman-1850703__480.jpg"),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: width * 0.02,
                        ),
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "24,897",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ),
      )),
      bottomNavigationBar: bottom_menu(),
    );
  }

// Bottom Menu Bar
  BottomNavigationBar bottom_menu() {
    return BottomNavigationBar(
        currentIndex: menu_index,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) => setState(() => menu_index = index),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: const IconThemeData(color: Colors.black),
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.home,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.arrow_up_circle,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.arrow_down_circle,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.settings,
              ),
              label: "")
        ]);
  }
}

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          "Money flow",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Icon(
          Icons.notifications,
          size: 25,
        )
      ],
    );
  }
}
