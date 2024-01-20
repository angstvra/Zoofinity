import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  _AboutUsState createState() => _AboutUsState();
}

final List<String> names = <String>[
  'Kate Delos Reyes',
  'Albert Pangan',
  'Jhun Dustin Salvaloza'
];

// Palitan niyo na lang desc here
final List<String> shortDesc = [
  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eleifend et leo sed pharetra. Sed egestas turpis non velit tincidunt, in eleifend leo porta. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',
  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eleifend et leo sed pharetra. Sed egestas turpis non velit tincidunt, in eleifend leo porta. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',
  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eleifend et leo sed pharetra. Sed egestas turpis non velit tincidunt, in eleifend leo porta. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.'
];

//Picture niyo
final List<String> img = [
  'assets/images/ahas.jpg',
  'assets/images/2.png',
  'assets/images/deer.jpg'
];

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 50, left: 20),
                child: Text(
                  'About Us',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Fredoka-One',
                    color: Color(0xFF345525),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Container(
                        width: (MediaQuery.of(context).size.width * 0.9),
                        height: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFF6B9D11),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 15,
                              left: 10,
                              child: Container(
                                width: 130,
                                height: 130,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xFFD9D9D9),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    img[0],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 30,
                              left: 175,
                              child: Text(
                                names[0],
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Fredoka-One',
                                  color: Color(0xFF345525),
                                ),
                              ),
                            ),
                            Positioned(
                                top: 160,
                                left: 10,
                                child: SizedBox(
                                  height: 200,
                                  width: 345,
                                  child: Text(
                                    shortDesc[0],
                                    maxLines: 5,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Fredoka-One',
                                      color: Color(0xFF345525),
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 270),
                      child: Container(
                        width: (MediaQuery.of(context).size.width * 0.9),
                        height: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFF345525),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 15,
                              right: 10,
                              child: Container(
                                width: 130,
                                height: 130,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xFFD9D9D9),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    img[1],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 30,
                              left: 30,
                              child: Text(
                                names[1],
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Fredoka-One',
                                  color: Color(0xFF6B9D11),
                                ),
                              ),
                            ),
                            Positioned(
                                top: 160,
                                left: 10,
                                child: SizedBox(
                                  height: 200,
                                  width: 345,
                                  child: Text(
                                    shortDesc[1],
                                    maxLines: 5,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Fredoka-One',
                                      color: Color(0xFF6B9D11),
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 550, bottom: 30),
                      child: Container(
                        width: (MediaQuery.of(context).size.width * 0.9),
                        height: 290,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFF6B9D11),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 15,
                              left: 10,
                              child: Container(
                                width: 130,
                                height: 130,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xFFD9D9D9),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    img[2],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 30,
                              left: 145,
                              child: Text(
                                names[2],
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Fredoka-One',
                                  color: Color(0xFF345525),
                                ),
                              ),
                            ),
                            Positioned(
                                top: 160,
                                left: 10,
                                child: SizedBox(
                                  height: 200,
                                  width: 345,
                                  child: Text(
                                    shortDesc[0],
                                    maxLines: 5,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Fredoka-One',
                                      color: Color(0xFF345525),
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                //   ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
