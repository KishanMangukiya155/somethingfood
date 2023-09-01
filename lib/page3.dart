import 'package:flutter/material.dart';
import 'package:somethingfood/secondscreen.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  List<Map<String, dynamic>> list1 = [
    {
      'name': 'Big Mad Burger',
      'price': '\$12.90',
      'image': 'assets/image/big mad.jpeg',
    },
    {
      'name': 'Pineaple Pork',
      'price': '\$24.60',
      'image': 'assets/image/pineaple.jpeg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F3F5),
      body: Column(
        children: [
          Container(
            height: 110,
            width: 360,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.only(top: 35, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context, SecondScreen());
                      },
                      child: Icon(Icons.arrow_back)),
                  Text('Order details',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  Icon(Icons.help_outline),
                ],
              ),
            ),
          ),
          Container(
            height: 160,
            width: 360,
            //color: Colors.grey,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Heaven's food",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.timer_outlined, color: Colors.orangeAccent),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Delivery / As soon as possible",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        width: 75,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 15,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.orangeAccent,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "800 Cheese avenue, NYC",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        width: 113,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 15,
                        color: Colors.grey,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 406,
            width: 360,
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 15, left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Your order',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      Text('See menu')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: List.generate(
                        list1.length,
                        (index) => Container(
                              height: 70,
                              width: 360,
                              margin: EdgeInsets.symmetric(vertical: 8),
                              // color: Colors.red,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 70,
                                        width: 70,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  list1[index]["image"]),
                                              fit: BoxFit.fill),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            list1[index]["name"],
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17),
                                          ),
                                          SizedBox(height: 6),
                                          Text(
                                            list1[index]["price"],
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.grey.shade500),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Countlist(),
                                ],
                              ),
                            )),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Subtotal',
                          style: TextStyle(color: Colors.grey, fontSize: 15)),
                      Text('\$37.50',
                          style: TextStyle(color: Colors.grey, fontSize: 15)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Delivery',
                          style: TextStyle(color: Colors.grey, fontSize: 15)),
                      Container(
                        height: 20,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey.shade300,
                        ),
                        child: Center(child: Text('Free')),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25)),
                      Text('\$37.50',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20))
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 45,
            width: 280,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black,
            ),
            child: Center(
              child: Text('Place order',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            ),
          )
        ],
      ),
    );
  }
}

class Countlist extends StatefulWidget {
  const Countlist({super.key});

  @override
  State<Countlist> createState() => _CountlistState();
}

class _CountlistState extends State<Countlist> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 50,
      //  color: Colors.greenAccent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                if (count > 0) {
                  count--;
                }
              });
            },
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  color: Colors.orange, borderRadius: BorderRadius.circular(8)),
              child: Icon(Icons.remove, color: Colors.white),
            ),
          ),
          Text("$count"),
          GestureDetector(
            onTap: () {
              setState(() {
                count++;
              });
            },
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(Icons.add, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
