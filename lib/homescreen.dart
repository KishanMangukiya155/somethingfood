import 'package:flutter/material.dart';
import 'package:somethingfood/secondscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> list1 = [
    {
      'name': 'Pasta',
      'image': 'assets/image/pasta.png',
    },
    {
      'name': 'Sushi',
      'image': 'assets/image/sushi.png',
    },
    {
      'name': 'Salads',
      'image': 'assets/image/salads.png',
    },
  ];
  List<Map<String, dynamic>> list2 = [
    {
      'name': "Heaven's Food",
      'image': 'assets/image/heaven.jpeg',
      'name1': '4.5',
      'time': '25-30 min',
      'price': '\$\$\$',
      'icon': Icons.star,
      'icon1': Icons.access_time_filled,
      'name4': 'Steak',
      'name5': 'Fish',
      'name6': 'Experimental',
    },
    {
      'name': 'Grill Hell Hous',
      'image': 'assets/image/pxfuel.jpg',
      'name1': '4.9',
      'time': '40-50 min',
      'price': '\$\$\$',
      'icon': Icons.star,
      'icon1': Icons.access_time_filled,
      'name4': 'Gill',
      'name5': 'Meat',
      'name6': 'Experimental',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, color: Colors.orangeAccent),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: 'Orders'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
        ],
      ),
      backgroundColor: Color(0xffF2F3F5),
      body: Column(
        children: [
          Container(
            height: 150,
            width: 360,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 40, right: 10, left: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_sharp,
                        color: Colors.orange,
                        size: 30,
                      ),
                      Text('800 Cheese Avenue,'),
                      Text(
                        ' NYC',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 50,
                    width: 360,
                    decoration: BoxDecoration(
                        color: Color(0xffF2F3F5),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Search for food',
                          hintStyle: TextStyle(
                              fontSize: 15, color: Colors.grey.shade400),
                          fillColor: Color(0xffF2F3F5),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 10),
            child: Row(
              children: [
                Text(
                  'Something new',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(height: 8),
          Container(
            height: 180,
            //color: Colors.black,
            width: 360,
            child: ListView.builder(
              itemCount: list1.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Stack(
                  //  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 180,
                      width: 130,
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffFFA012),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(list1[index]['name'],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18)),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: -50,
                        right: -40,
                        height: 160,
                        width: 160,
                        child: Image.asset(
                          list1[index]['image'],
                        ))
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: Row(
              children: [
                Text(
                  'Recommended',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            height: 260,
            //color: Colors.black,
            width: 360,
            child: ListView.builder(
              itemCount: list2.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    SecondScreen()));
                      },
                      child: Container(
                        height: 170,
                        width: 260,
                        margin: EdgeInsets.only(left: 10, top: 5),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(list2[index]['image']),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffFFA012),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                list2[index]['name'],
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                list2[index]['icon'],
                                color: Colors.orangeAccent,
                                size: 15,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(list2[index]['name1']),
                              SizedBox(
                                width: 3,
                              ),
                              Container(
                                height: 3,
                                width: 3,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(100)),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Icon(
                                list2[index]['icon1'],
                                color: Colors.grey,
                                size: 15,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(list2[index]['time']),
                              SizedBox(
                                width: 8,
                              ),
                              Container(
                                height: 3,
                                width: 3,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(100)),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(list2[index]['price'],
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 20,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Text(list2[index]['name4'],
                                      style: TextStyle(color: Colors.grey)),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                height: 20,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Text(list2[index]['name5'],
                                      style: TextStyle(color: Colors.grey)),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                height: 20,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Text(list2[index]['name6'],
                                      style: TextStyle(color: Colors.grey)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
