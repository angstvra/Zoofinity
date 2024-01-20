import 'package:flutter/material.dart';
import 'package:zoofinity/screens/homePage.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key, required this.title});
  final String title;

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/landingBg.png"),
                    fit: BoxFit.cover),
              ),
            ),
            const Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(bottom: 50),
                child: Text(
                  "ZOOFINITY",
                  style: TextStyle(
                      fontFamily: 'Fredoka-One',
                      fontSize: 48,
                      color: Color(0xFF345525)),
                ),
              ),
            ),
            const Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 50),
                child: Text(
                  "Discover something new",
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: (MediaQuery.of(context).size.width * 0.25)),
                child: SizedBox(
                  height: 50,
                  width: 190,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: const StadiumBorder(),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage(
                                  title: 'Home',
                                )),
                      );
                    },
                    child: const Text(
                      "Get Started",
                      style: TextStyle(
                          color: Color(0xFF345525),
                          fontSize: 16,
                          fontFamily: 'Fredoka-One'),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
