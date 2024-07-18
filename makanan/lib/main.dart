import 'package:boekiez/halamandua.dart';
import 'package:flutter/material.dart';
import 'package:boekiez/BottomNaviagtionBar.dart';
import 'package:boekiez/componen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Toko Buah nadin',
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 29, 29, 29),
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0x00ffffff),
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Color.fromARGB(225, 255, 255, 255)),
          onPressed: () => {},
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HalamanDua()),
              );
            },
            icon: const Icon(
              Icons.shopping_bag_outlined,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 20),
            height: 35,
            width: 35,
            child: const CircleAvatar(
              radius: 48,
              backgroundImage: AssetImage('images/eno.jpg'),
            ),
          ),
        ],
      ),
      body: Container(
        alignment: AlignmentDirectional.center,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Image.asset('images/campaigns.png'),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Recommended Fruits',
                          style: TextStyle(
                            color: Color.fromARGB(225, 255, 255, 255),
                            fontSize: 21,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              'View all',
                              style: TextStyle(
                                color: Color.fromARGB(235, 255, 153, 0),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.keyboard_arrow_right,
                                color: Color.fromARGB(235, 255, 153, 0),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              PerbuahWidget(),
                              PerbuahWidget(),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              PerbuahWidget(),
                              PerbuahWidget(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
     
    );
  }
}
