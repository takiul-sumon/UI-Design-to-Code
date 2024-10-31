import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Placeholder(
              color: Colors.white,
              strokeWidth: double.negativeInfinity,
              fallbackHeight: 60,
              fallbackWidth: double.infinity,
              child: SizedBox(
                width: double.infinity,
                height: 60,
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              "Hi, David!",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Image.asset('assets/icon/clap.png',
                                height: 30, width: 30),
                          ],
                        ),
                        const Text('Explore the World',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54))
                      ],
                    ),
                    CircleAvatar(
                      child: Image.asset("assets/icon/man.png"),
                    )
                  ],
                ),
              ),
            ),
            // TextField(
            //   onTap: (){},

            // )

            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey[300]!),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search places',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  VerticalDivider(
                    color: Colors.red,
                    thickness: 3,
                    indent: 8,
                    endIndent: 8,
                  ),
                  Container(
                    height: 30,
                    width: 3,
                    color: Colors.amber,
                  ),
                  VerticalDivider(
                    color: Colors.red,
                    thickness: 3,
                    indent: 8,
                    endIndent: 8,
                  ),
                  Icon(
                    Icons.tune, // Filter icon
                    color: Colors.grey,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
