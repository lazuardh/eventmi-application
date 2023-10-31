import 'package:eventmi_application/presentation/page/favorite/favorite_pages.dart';
import 'package:eventmi_application/presentation/page/home/home_pages.dart';
import 'package:eventmi_application/presentation/page/profile/profile_pages.dart';
import 'package:eventmi_application/presentation/page/ticket/ticket_pages.dart';
import 'package:eventmi_application/utils/colors.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentTab = 0;

  Widget currentScreen = const HomePages();

  List<Widget> pages = const [
    HomePages(),
    FavoritePages(),
    TicketPages(),
    ProfilePages(),
  ];

  final iconList = <IconData>[
    Icons.home,
    Icons.favorite,
    Icons.airplane_ticket,
    Icons.person,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: currentScreen,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color(0XFFD800EB),
          shape: const CircleBorder(),
          child: SizedBox(
            width: 30,
            height: 50,
            child: Image.asset(
              "assets/icon/location.png",
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomAppBar(
            color: backgroundBottomNav,
            shape: const CircularNotchedRectangle(),
            notchMargin: 10,
            child: SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            currentScreen = const HomePages();
                            currentTab = 0;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.home,
                              color:
                                  currentTab == 0 ? Colors.blue : Colors.grey,
                            ),
                            Text(
                              "Home",
                              style: TextStyle(
                                color:
                                    currentTab == 0 ? Colors.blue : Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            currentScreen = const FavoritePages();
                            currentTab = 1;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.favorite,
                              color:
                                  currentTab == 1 ? Colors.blue : Colors.grey,
                            ),
                            Text(
                              "Favorite",
                              style: TextStyle(
                                color:
                                    currentTab == 1 ? Colors.blue : Colors.grey,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            currentScreen = const HomePages();
                            currentTab = 2;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.airplane_ticket,
                              color:
                                  currentTab == 2 ? Colors.blue : Colors.grey,
                            ),
                            Text(
                              "Ticket",
                              style: TextStyle(
                                color:
                                    currentTab == 2 ? Colors.blue : Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            currentScreen = const FavoritePages();
                            currentTab = 3;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person,
                              color:
                                  currentTab == 3 ? Colors.blue : Colors.grey,
                            ),
                            Text(
                              "Profile",
                              style: TextStyle(
                                color:
                                    currentTab == 3 ? Colors.blue : Colors.grey,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
