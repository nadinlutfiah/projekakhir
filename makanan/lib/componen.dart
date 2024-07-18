import 'package:flutter/material.dart';

class PerbuahWidget extends StatelessWidget {
  const PerbuahWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 175,
      height: 300,
      child: Card(
        color: Color.fromARGB(255, 5, 5, 5),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(75.0),
                topRight: Radius.circular(75.0),
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0))),
        child: Padding(
          padding: EdgeInsets.only(top: 25.0),
          child: Column(
            children: [
              SizedBox(
                width: 110,
                height: 110,
                child: Image.asset('assets/mango.png'),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0, left: 5.0, right: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Fruit",
                      style: TextStyle(
                        color: Colors.orange,
                        fontFamily: "Inter",
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 5.0,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        Text(
                          '4.7',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10.0, left: 15.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Mango",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 15.0),
                child: Row(
                  children: const [
                    Text(
                      "Rp. 69.000",
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 16,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w700),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Text(
                        "per Kg",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    )
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
