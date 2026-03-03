// Project Flutter About : Shoes Apps development
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  final List<Map<String, dynamic>> products = [
    {
      "title": "Juice Wrld x Vlone",
      "subtitle": "Black",
      "price": "\$500",
      "image":
          "https://i.pinimg.com/736x/45/91/e8/4591e8f0553a8981d0c7ac79333fcecb.jpg",
    },
    {
      "title": "Xcode Build blue",
      "subtitle": "White",
      "price": "\$290",
      "image":
          "https://i.pinimg.com/1200x/df/a1/cb/dfa1cbc2c7ca7dd2c195515ac6637b0f.jpg",
    },
    {
      "title": "Sport World lines",
      "subtitle": "Red",
      "price": "\$400",
      "image":
          "https://i.pinimg.com/1200x/21/68/e1/2168e141ed8428ae0717cb2362f07900.jpg",
    },
    {
      "title": "Green&Shine sun",
      "subtitle": "White&Blue",
      "price": "\$350",
      "image":
          "https://i.pinimg.com/736x/86/64/74/8664748a10b4e66f053dcfc4cc101495.jpg",
    },
    {
      "title": "biery star light",
      "subtitle": "purple",
      "price": "\$800",
      "image":
          "https://i.pinimg.com/1200x/80/61/3e/80613eca2cf12efde6f59bb7c3691f91.jpg",
    },
    {
      "title": "addidas x klone",
      "subtitle": "yellow",
      "price": "\$700",
      "image":
          "https://i.pinimg.com/1200x/fa/04/4d/fa044dbbe081672d6feeb8c606963880.jpg",
    },
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30, color: Colors.red),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, size: 30, color: Colors.red),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle, size: 30, color: Colors.red),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
              size: 30,
              color: Colors.red,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.rate_review_outlined, size: 30, color: Colors.red),
            label: "",
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeader(),
            const SizedBox(width: 20),
            _buildMainCard(),
            const SizedBox(width: 30),
            _buildLastedSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      height: 280,
      width: 500,
      padding: EdgeInsets.only(top: 60, left: 21, right: 21, bottom: 40),
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.elliptical(200, 120),
          bottomRight: Radius.elliptical(-500, 50),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Athletics Shes\nCollections",
            style: TextStyle(
              fontSize: 27,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Man Shoes",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Women Shoes",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Kids Shoes",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMainCard() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        elevation: 8,
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.network(
                  "https://i.pinimg.com/1200x/fd/72/55/fd7255c7932a9c490db3987762641aa8.jpg",
                  width: 220,
                  height: 110,
                  fit: BoxFit.cover,
                ),
              ),
              Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "ADIDAS\nSport Shoes",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("For Gym", style: TextStyle(fontSize: 16)),
                          SizedBox(
                            height: 30,
                            child: Row(
                              children: [
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.red,
                                  ),
                                ),
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.purple,
                                  ),
                                ),
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.green,
                                  ),
                                ),
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.yellow,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "Price : \$500.0",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLastedSection() {
    return SizedBox(
      height: 1000,
      child: Positioned(
        left: 5,
        right: 5,
        top: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 200,
                  height: 260,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Card(
                    elevation: 10,
                    borderOnForeground: true,
                    color: Colors.white,
                    margin: EdgeInsets.only(right: 0, left: 0),
                    child: InkWell(
                      canRequestFocus: true,
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              Image.network(
                                "https://i.pinimg.com/1200x/9e/9b/e9/9e9be9bd80f42856f4c124dcb2146f31.jpg",
                                width: 130,
                                height: 110,
                                fit: BoxFit.cover,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Crocodile Yellow",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Text("Yellow Color"),
                                          ElevatedButton(
                                            onPressed: () {
                                              ElevatedButton.styleFrom(
                                                padding: EdgeInsets.all(20),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                              );
                                            },
                                            child: Text("Move to Bags"),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(width: 70),
                                          TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              "\$245",
                                              style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.red,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.badge_sharp,
                                              size: 25,
                                              color: Colors.red,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      width: 200,
                      height: 260,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: Card(
                        elevation: 10,
                        color: Colors.white,
                        margin: EdgeInsets.only(right: 0, left: 0),
                        child: InkWell(
                          canRequestFocus: true,
                          child: Stack(
                            children: [
                              Column(
                                children: [
                                  Center(
                                    child: Image.network(
                                      "https://i.pinimg.com/1200x/df/a1/cb/dfa1cbc2c7ca7dd2c195515ac6637b0f.jpg",
                                      width: 200,
                                      height: 120,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Scaf Khmer2026",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text("Red&Black color"),
                                      ElevatedButton(
                                        onPressed: () {
                                          ElevatedButton.styleFrom(
                                            padding: EdgeInsets.all(15),
                                          );
                                        },
                                        child: Text(
                                          "Move to Bags",
                                          style: TextStyle(),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(width: 70),
                                          TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              "\$245",
                                              style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.red,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.badge_sharp,
                                              size: 25,
                                              color: Colors.red,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProductsCard extends StatefulWidget {
  const ProductsCard({super.key, required Map<String, dynamic> product});

  @override
  State<ProductsCard> createState() => _ProductsCardState();
}

class _ProductsCardState extends State<ProductsCard> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
