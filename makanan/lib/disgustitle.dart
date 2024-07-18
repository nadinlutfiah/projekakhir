import 'package:flutter/material.dart';

class DisgusTitle extends StatelessWidget {
  const DisgusTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              'Rp. 80.000',
              style: TextStyle(
                color: Colors.orange,
                fontSize: 35,
              ),
            ),
            Row(
              children: [
                Row(
                  children: [
                    for (var i = 1; i <= 5; i++)
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 15,
                      ),
                    Text(
                      '5.0',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Per Kg',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 70, 70, 70),
                      fontSize: 16),
                )
              ],
            )
          ],
        ),
        ElevatedButton(
          child: Icon(
            Icons.favorite_rounded,
            color: Colors.red,
            size: 50,
          ),
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            padding: EdgeInsets.all(10),
            backgroundColor: const Color.fromARGB(255, 54, 54, 54),
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
