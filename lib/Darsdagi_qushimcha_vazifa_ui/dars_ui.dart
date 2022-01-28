import 'package:flutter/material.dart';

import 'get_start_page.dart';

class DarsUI extends StatefulWidget {
  const DarsUI({Key? key}) : super(key: key);
static const String id="/dars_ui";
  @override
  _DarsUIState createState() => _DarsUIState();
}

class _DarsUIState extends State<DarsUI> {
  PageController _pageController = PageController();
  int _selectedIndex = 1;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    bool isTapGetStart = false;
    bool isTapLogin = false;


    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.orange,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 80),
            Expanded(
                flex: 1,
                child: Container(
                  child: const Text("Your Logo",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      )),
                  alignment: Alignment.topCenter,
                )),
            Expanded(
                flex: 2,
                child:Container(
                  child:  Column(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Container(
                              padding: EdgeInsets.only(right: 20, left: 20),
                              height: 60,
                              child: Column(
                                children: [
                                  const Align(
                                      child: Text(
                                        "All Your Favourite Dishes",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20),
                                      ),
                                      alignment: Alignment.center),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Expanded(
                                      flex: 3,
                                      child: Container(
                                          width: MediaQuery
                                              .of(context)
                                              .size
                                              .width *
                                              0.9,
                                          child: PageView(
                                            scrollDirection:
                                            Axis.horizontal,
                                            controller: _pageController,
                                            onPageChanged: (index) {
                                              setState(() {
                                                _selectedIndex = index;
                                              });
                                            },
                                            children: [
                                              Container(
                                                padding: const EdgeInsets.only(
                                                    left: 10, right: 10),
                                                height: 50,
                                                width:
                                                MediaQuery
                                                    .of(context)
                                                    .size
                                                    .width *
                                                    0.9,
                                                child: const Text(
                                                  "Order from your nearby best restaurant in the town.You can easily order from anywhere, anytime",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight:
                                                    FontWeight.bold,
                                                  ),
                                                  textScaleFactor: 1,
                                                  textAlign:
                                                  TextAlign.center,
                                                ),
                                              ),
                                              Container(
                                                padding: const EdgeInsets.only(
                                                    left: 10, right: 10),
                                                height: 50,
                                                width:
                                                MediaQuery
                                                    .of(context)
                                                    .size
                                                    .width *
                                                    0.9,
                                                child: const Text(
                                                  "Order from your nearby best restaurant in the town.You can easily order from anywhere, anytime",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight:
                                                    FontWeight.bold,
                                                  ),
                                                  textScaleFactor: 1,
                                                  textAlign:
                                                  TextAlign.center,
                                                ),
                                              ),
                                              Container(
                                                padding: const EdgeInsets.only(
                                                    left: 10, right: 10),
                                                height: 50,
                                                width:
                                                MediaQuery
                                                    .of(context)
                                                    .size
                                                    .width *
                                                    0.9,
                                                child: const Text(
                                                  "Order from your nearby best restaurant in the town.You can easily order from anywhere, anytime",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight:
                                                    FontWeight.bold,
                                                  ),
                                                  textScaleFactor: 1,
                                                  textAlign:
                                                  TextAlign.center,
                                                ),
                                              ),
                                            ],
                                          ))),
                                  Expanded(
                                      child: Container(
                                        height: 10,
                                        width: 30,
                                        child: Center(
                                          child: NavigationBar(
                                            backgroundColor: Colors.transparent,
                                            selectedIndex: 2,
                                            destinations: [
                                              Center(
                                                  child: (_selectedIndex == 0)
                                                      ? const CircleAvatar(
                                                    radius: 4,
                                                    backgroundColor:
                                                    Colors.black,
                                                  )
                                                      : const CircleAvatar(
                                                    radius: 3,
                                                    backgroundColor:
                                                    Colors.white,
                                                  )),
                                              Center(
                                                  child: (_selectedIndex == 1)
                                                      ? const CircleAvatar(
                                                    radius: 4,
                                                    backgroundColor:
                                                    Colors.black,
                                                  )
                                                      : const CircleAvatar(
                                                    radius: 3,
                                                    backgroundColor:
                                                    Colors.white,
                                                  )),
                                              Center(
                                                  child: (_selectedIndex == 2)
                                                      ? const CircleAvatar(
                                                    radius: 4,
                                                    backgroundColor:
                                                    Colors.black,
                                                  )
                                                      : const CircleAvatar(
                                                    radius: 3,
                                                    backgroundColor:
                                                    Colors.white,
                                                  ))
                                            ],
                                          ),
                                        ),
                                      )),
                                ],
                              ))),
                      Expanded(
                          flex: 2,
                          child: Container(
                            height: 100,
                            width: double.infinity,
                            padding: const EdgeInsets.only(right: 20, left: 20),
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.2),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(40),
                                    topRight: Radius.circular(40))),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 50,
                                ),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>GetStartPage()));
                                    },
                                    style: ElevatedButton.styleFrom(
                                        primary:
                                        Colors.greenAccent.shade700,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(15))),
                                    child: Container(
                                      height: 50,
                                      alignment: Alignment.center,
                                      child: const Text(
                                        "Get Started",
                                      ),
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 20),
                                    )),
                                const SizedBox(
                                  height: 20,
                                ),
                                ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.black54,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(15))),
                                    child: Container(
                                      height: 50,
                                      alignment: Alignment.center,
                                      child: const Text("Login"),
                                      padding: const EdgeInsets.only(
                                          left: 15, right: 15),
                                    )),
                              ],
                            ),
                          )),
                    ],
                  )

                )
            )
          ],
        ),
      ),
    );
  }

  }
