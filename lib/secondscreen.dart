import 'package:flutter/material.dart';
import 'package:somethingfood/page3.dart';

import 'homescreen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  List<Map<String, dynamic>> image = [
    {
      'image': 'assets/image/Burger.jpg',
    },
    {
      'image': 'assets/image/Burger2.jpg',
    },
    {
      'image': 'assets/image/Burger1.jpg',
    },
  ];

  List<Map<String, dynamic>> list1 = [
    {
      'name': 'Potato wedges',
      'name1': 'Recommended',
    },
    {
      'name': 'Corn on the cob',
      'name1': '',
    },
    {
      'name': 'Cucumber',
      'name1': '',
    }
  ];

  int selcted = 0;
  final PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F3F5),
      body: Column(
        children: [
          Container(
            height: 350,
            width: 360,
            color: Colors.grey,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                PageView.builder(
                  controller: pageController,
                  onPageChanged: (value) {
                    setState(() {
                      selcted = value;
                    });
                  },
                  itemCount: image.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 350,
                      width: 360,
                      decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(image[index]['image']),
                              fit: BoxFit.fill)),
                    );
                  },
                ),
                Positioned(
                  bottom: 5,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          3,
                          (index) => Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: GestureDetector(
                                  onTap: () {
                                    pageController.animateToPage(index,
                                        duration: Duration(seconds: 2),
                                        curve: Curves.bounceInOut);
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: selcted == index
                                        ? Colors.orangeAccent
                                        : Colors.white,
                                    radius: 4,
                                  ),
                                ),
                              )),
                    ),
                  ),
                ),
                Positioned(
                  top: 5,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 40),
                    child: Row(
                      children: [
                        CircleAvatar(
                            backgroundColor: Colors.black26,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            HomeScreen()));
                              },
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                            )),
                        SizedBox(width: 240),
                        CircleAvatar(
                          backgroundColor: Colors.black26,
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Big Mad burger',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(height: 8),
                Text(
                  'Potato Bun,cheddar cheese,beef,cucumber\n'
                  'red onion,iceberg lettuce,avocado,tomato',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Choose addition',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          'Required',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ],
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(Icons.expand_less_rounded),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
              height: 155,
              width: 360,
              color: Colors.white,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: List.generate(
                    3,
                    (index) => ListTile(
                      leading: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.grey),
                        ),
                      ),
                      title: Text(list1[index]['name']),
                      subtitle: Text(list1[index]['name1'],
                          style: TextStyle(color: Colors.orangeAccent)),
                    ),
                  ),
                ),
              )),
          SizedBox(height: 20),
          Container(
            height: 45,
            width: 280,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black,
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Page3()));
              },
              child: Center(
                child: Text('Add(1) to cart-12,90',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
