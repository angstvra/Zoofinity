import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:zoofinity/screens/aboutUs.dart';
import 'package:zoofinity/screens/animals-2.dart';
import 'package:zoofinity/globals.dart' as globals;
import 'package:zoofinity/screens/habitat.dart';
import 'package:zoofinity/screens/quiz.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: selectedIndex == 0
              ? const BodyImageWidget()
              : selectedIndex == 1
                  ? const StartQuiz()
                  : const AboutUs(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          backgroundColor: const Color(0xFF345525),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 40,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/icons/paws.png'),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/icons/quiz.png'),
              ),
              label: 'Quiz',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/icons/info.png'),
              ),
              label: 'Info',
            ),
          ],
          currentIndex: selectedIndex,
          onTap: onItemTapped,
        ),
      ),
    );
  }

  //Code for changing Nav Items
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}

// Array for animal image
// Note: Dito kayo mag Lagay ng image for animal track niyo yung bawat index since kailangan match yung details nila with other arrays.

final _animalImage = [
  'assets/images/full/boiga-angulata.webp',
  'assets/images/full/binturong.webp',
  'assets/images/full/deer.jpg',
  'assets/images/preview/Philippine-Eagle_Preview.jpg',
  'assets/images/full/tarsier.jpg',
  'assets/images/preview/ForestTurtle_Preview.jpg',
  'assets/images/full/carabao.jpg',
  'assets/images/full/cockatoo.jpg',
  'assets/images/full/warty.jpg',
  'assets/images/preview/Dugong_Preview.jpg',
  'assets/images/preview/PalawanPeacock_Preview.jpg',
  'assets/images/full/civet.webp',
  'assets/images/full/batchest.jpg',
  'assets/images/full/cat.jpg',
  'assets/images/full/dog.webp',
  'assets/images/full/hamster.jpeg',
  'assets/images/preview/mindanaoHornbill_Preview.jpg',
  'assets/images/preview/komodo_Preview.jpg',
  'assets/images/full/owl.jpg',
  'assets/images/preview/crocodile_Preview.jpg',
  'assets/images/full/monkey.jpg',
  'assets/images/preview/pangolin_Preview.jpg',
  'assets/images/preview/tamaraw_Preview.jpg',
  'assets/images/preview/flyingFox_Preview.jpg',
  'assets/images/preview/gray_Preview.jpg',
  'assets/images/preview/bleedingHeart_Preview.jpg',
  'assets/images/full/cloudrunner.jpg',
  'assets/images/preview/pigeon_Preview.jpg',
  'assets/images/preview/sailfin_Preview.jpg',
  'assets/images/preview/chicken_Preview.jpg',
];
final _animalName = [
  'Leyte Cat Snake',
  'Binturong',
  'Philippine Deer',
  'Philippine Eagle',
  'Philippine Tarsier',
  'Philippine Forest Turtle',
  'Philippine Carabao',
  'Philippine Red-vented Cockatoo',
  'Philippine warty pig',
  'Dugong',
  'Palawan Peacock-pheasant',
  'Asian Palm Civet',
  'Philippine Bat',
  'Cat (Puspin)',
  'Dog (Aspin)',
  'Hamster',
  'Mindanao Hornbill',
  'Komodo Dragon',
  'Owl',
  'Philippine Crocodile',
  'Monkey',
  'Philippine Pangolin',
  'Tamaraw',
  'Ryukyu Flying Fox',
  "Gray's Monitor",
  'Mindanao Bleeding-Heart',
  'Panay Cloudrunner',
  'Domestic Pigeon',
  'Philippine Sailfin Lizard',
  'Chicken',
];

// Array for habitat image
// Note: Same procedure dito kayo mag Lagay naman ng image for habitat and track niyo rin yung bawat index since kailangan match yung details nila with other arrays.

final _habitatImage = [
  'assets/images/habitat/forest.webp',
  'assets/images/habitat/landingBg.png',
  'assets/images/habitat/forest.webp',
  'assets/images/habitat/eagle h.jpg',
  'assets/images/habitat/tarsier h.jpg',
  'assets/images/habitat/turtle h.jpg',
  'assets/images/habitat/carabao h.jpg',
  'assets/images/habitat/cockatoo h.jpg',
  'assets/images/habitat/pig h.jpg',
  'assets/images/habitat/dugong h.jpg',
  // 'assets/images/peacockPheasant.jpeg',
  'assets/images/habitat/ph forest.jpg',
  'assets/images/habitat/bat h.jpg',
  'assets/images/habitat/cat h.jpg',
  'assets/images/habitat/dog h.jpg',
  'assets/images/habitat/hamster h.jpg',
  'assets/images/habitat/forest.webp',
  'assets/images/habitat/komodo h.jpg',
  'assets/images/habitat/owl h.jpg',
  'assets/images/habitat/crocs h.jpg',
  'assets/images/habitat/monkey h.jpg'
]; // dummy data

final _habitatName = [
  'Philippine Tree',
  'Philippine Forest',
  'Forest',
  'Philippine Forest',
  'Tropical Rainforests',
  'Lake & Rivers',
  'Swamp Type Water',
  'Mangrove swamps',
  'Mount Apo',
  'Coastal Waters',
  'Tropical Forest',
  'Tropical Rainforests',
  'Cave',
  'Domestic',
  'Domestic',
  'Sand Dunes',
  'Tropical Forest',
  'Tropical Forest',
  'Coniferous Forest',
  'Swamp lake',
  'Forest'
];

final _animalSize = _animalImage.length;
final _habitatlSize = _habitatImage.length;

class BodyImageWidget extends StatefulWidget {
  const BodyImageWidget({super.key});

  @override
  State<BodyImageWidget> createState() => _BodyImageWidgetState();
}

class _BodyImageWidgetState extends State<BodyImageWidget> {
  late String _currentAnimal;

  int _lastIndex = -1;

  final List<String> animalImages = [
    'assets/images/full/boiga-angulata.webp',
    'assets/images/full/binturong.webp',
    'assets/images/full/deer.jpg',
    'assets/images/full/ph_Eagle.jpg',
    'assets/images/full/tarsier.jpg',
    'assets/images/full/ForestTurtle.jpg',
    'assets/images/full/carabao.jpg',
    'assets/images/full/cockatoo.jpg',
    'assets/images/full/warty.jpg',
    'assets/images/full/dugong.webp',
    'assets/images/full/PalawanPeacock.jpg',
    'assets/images/full/civet.webp',
    'assets/images/full/batchest.jpg',
    'assets/images/full/cat.jpg',
    'assets/images/full/dog.webp',
    'assets/images/full/hamster.jpeg',
    'assets/images/full/mindanaoHornbill.jpg',
    'assets/images/full/komodo.jpg',
    'assets/images/full/owl.jpg',
    'assets/images/full/crocodile.jpg',
    'assets/images/full/monkey.jpg',
    'assets/images/full/pangolin.jpg',
    'assets/images/full/tamaraw.jpg',
    'assets/images/full/flyingFox.jpg',
    'assets/images/full/gray.jpg',
    'assets/images/full/bleedingHeart.jpg',
    'assets/images/full/cloudrunner.jpg',
    'assets/images/full/pigeon.jpg',
    'assets/images/full/sailfin.jpg',
    'assets/images/full/chicken.jpg',
  ];

  @override
  void initState() {
    super.initState();

    _updateAnimalOfTheDay();

    // Update the animal of the day every 5 hours
    Timer.periodic(const Duration(hours: 5), (timer) {
      _updateAnimalOfTheDay();
    });
  }

  void _updateAnimalOfTheDay() {
    int index;
    do {
      index = Random().nextInt(animalImages.length);
    } while (index == _lastIndex);

    setState(() {
      _currentAnimal = animalImages[index];
      _lastIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double heightHalf = (((MediaQuery.of(context).size.width * 0.9) / 1.3) / 2);
    double widthHalf = (((MediaQuery.of(context).size.width * 0.9) / 2) / 2);

    void _NextAnimal() {
      setState(() {
        globals.animalIndex++;
        if (globals.animalIndex >= _animalSize) {
          globals.animalIndex = 0;
        }
      });
    }

    void _BackAnimal() {
      setState(() {
        globals.animalIndex--;
        globals.animalIndex =
            (globals.animalIndex < 0) ? _animalSize - 1 : globals.animalIndex;
      });
    }

    void _NextHabitat() {
      setState(() {
        globals.habitatIndex++;
        if (globals.habitatIndex >= _habitatlSize) {
          globals.habitatIndex = 0;
        }
      });
    }

    void _BackHabitat() {
      setState(() {
        globals.habitatIndex--;
        globals.habitatIndex = (globals.habitatIndex < 0)
            ? _habitatlSize - 1
            : globals.habitatIndex;
      });
    }

    return Scaffold(
      backgroundColor: const Color(0xFFEFECE4),
      body: Center(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.45,
                width: MediaQuery.of(context).size.width,
                child: const DecoratedBox(
                  decoration: BoxDecoration(
                    color: Color(0xFF6B9D11),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50, left: 20),
                    child: Column(
                      children: [
                        const Text(
                          'Animal of the Day',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Fredoka-One',
                            color: Color(0xFF345525),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            width: (MediaQuery.of(context).size.width * 0.9),
                            height: ((MediaQuery.of(context).size.width * 0.9) /
                                1.5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xFFD9D9D9),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                _currentAnimal,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 30, top: 25),
                    child: Text(
                      "Explore what you're looking for!",
                      style: TextStyle(
                          fontFamily: 'Fredoka-One',
                          fontSize: 16,
                          color: Color(0xFF345525)),
                    ),
                  ),
                ),
                Row(
                  children: const [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 30, top: 50),
                        child: Text(
                          "BY TYPE",
                          style: TextStyle(
                              fontFamily: 'Fredoka-One',
                              fontSize: 16,
                              color: Color(0xFF345525)),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(left: 110, top: 50),
                        child: Text(
                          "BY HABITAT",
                          style: TextStyle(
                              fontFamily: 'Fredoka-One',
                              fontSize: 16,
                              color: Color(0xFF345525)),
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Row(
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30, left: 15),
                            child: InkWell(
                                child: Container(
                                  width: ((MediaQuery.of(context).size.width *
                                          0.9) /
                                      2),
                                  height: ((MediaQuery.of(context).size.width *
                                          0.9) /
                                      1.3),
                                  decoration: BoxDecoration(
                                    // color: Color(0xFFD9D9D9),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)),
                                    image: DecorationImage(
                                        // code to add img and icon buttons
                                        image: AssetImage(
                                            animalImages[globals.animalIndex]),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Animals2()));
                                }),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30, left: 10),
                            child: InkWell(
                              child: Container(
                                width:
                                    ((MediaQuery.of(context).size.width * 0.9) /
                                        2),
                                height:
                                    ((MediaQuery.of(context).size.width * 0.9) /
                                        1.3),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFD9D9D9),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  image: DecorationImage(
                                      // code to add img
                                      image: AssetImage(
                                          _habitatImage[globals.habitatIndex]),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HabitatScreen()));
                              },
                            ),
                          ),
                        ),
                      ],
                    ),

                    // Next and back buttons.
                    // Note: Align niyo nalang kung di siya naka align and palitan niyo nalang rin ng color if di matchy.
                    Row(
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                              padding:
                                  EdgeInsets.only(top: heightHalf, left: 15),
                              child: IconButton(
                                onPressed: () {
                                  _BackAnimal();
                                },
                                icon: const Icon(Icons.arrow_back_ios_new),
                                color: Colors.white,
                              )),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                              padding: EdgeInsets.only(
                                  top: heightHalf, left: widthHalf),
                              child: IconButton(
                                  onPressed: () {
                                    _NextAnimal();
                                  },
                                  icon: const Icon(
                                      Icons.arrow_forward_ios_outlined),
                                  color: Colors.white)),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                              padding:
                                  EdgeInsets.only(top: heightHalf, left: 20),
                              child: IconButton(
                                  onPressed: () {
                                    _BackHabitat();
                                  },
                                  icon: const Icon(Icons.arrow_back_ios_new),
                                  color: Colors.white)),
                        ),
                        //SizedBox(width: 90),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                              padding: EdgeInsets.only(
                                  top: heightHalf, left: widthHalf),
                              child: IconButton(
                                  onPressed: () {
                                    _NextHabitat();
                                  },
                                  icon: const Icon(
                                      Icons.arrow_forward_ios_outlined),
                                  color: Colors.white)),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: heightHalf * 1.75,
                              left: widthHalf * 0.25,
                            ),
                            child: SizedBox(
                              width: widthHalf * 1.90,
                              child: Text(
                                _animalName[globals.animalIndex],
                                maxLines: 2,
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: widthHalf * 0.25),
                              child: const Text(
                                'Click to view details',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontFamily: 'Raleway'),
                              ),
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: heightHalf * 1.75, left: widthHalf * 2.4),
                            child: SizedBox(
                              width: widthHalf * 2,
                              child: Text(
                                _habitatName[globals.habitatIndex],
                                maxLines: 2,
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding:
                                  EdgeInsets.only(left: ((widthHalf * 2.4))),
                              child: const Text(
                                'Click to view details',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontFamily: 'Raleway'),
                              ),
                            )),
                      ],
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

class MyCards extends StatelessWidget {
  MyCards({Key? key}) : super(key: key);

  final List<Quote> quotes = [
    Quote(
        author: 'Mother Teresa',
        text:
            'Spread love everywhere you go. Let no one ever come to you without leaving happier.'),
    Quote(
        author: 'Nelson Mandela',
        text:
            'The greatest glory in living lies not in never falling, but in rising every time we fall.'),
    Quote(
        author: 'Aristotle',
        text:
            'It is during our darkest moments that we must focus to see the light.')
  ];

  Widget quoteTemplate(quote) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(fontSize: 18.0, color: Colors.grey[600]),
            ),
            const SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(fontSize: 14.0, color: Colors.grey[800]),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: quotes.map((quote) => quoteTemplate(quote)).toList(),
    );
  }
}

//quote.dart
class Quote {
  String? text; // errors need ?
  String? author;

  Quote({this.text, this.author});
}

class MyTextBody extends StatelessWidget {
  const MyTextBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text('This is a normal text.'),
        const Text(
          'This is a bold text.',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const Text(
          'This is a italic text.',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        const Text(
          'This is a bold and italic text.',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
        ),
        const Text(
          'This is a underlined wavy text.',
          style: TextStyle(
              decoration: TextDecoration.underline,
              decorationColor: Colors.red,
              decorationStyle: TextDecorationStyle.wavy),
        ),
        Text(
          "Nucleio Technologies",
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            foreground: Paint()
              ..shader = const LinearGradient(
                colors: <Color>[
                  Colors.pinkAccent,
                  Colors.deepPurpleAccent,
                  Colors.red
                  //add more color here.
                ],
              ).createShader(
                const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0),
              ),
          ),
        ),
      ],
    );
  }
}
