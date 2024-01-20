import 'package:flutter/material.dart';
import 'package:zoofinity/globals.dart' as globals;
import 'package:zoofinity/screens/homePage.dart';

class HabitatScreen extends StatefulWidget {
  const HabitatScreen({super.key});

  @override
  State<HabitatScreen> createState() => _HabitatScreenState();
}

// Array for habitat image
// Note: Lagay kayo image for habitat dito sa array, yung array na to should be equal dun sa array habitat image na nasa homepage.

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
  'assets/images/peacockPheasant.jpeg',
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

// Array for habitat image
// Note: After niyo lagyan ng image yung array sa habitat image array lagyan niyo naman ng name, dapat match sa index ng habitat image and habitat name.
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
  'Savannah Forest',
  'Coniferous Forest',
  'Swamp lake',
  'Forest'
];

// Array for habitat image
// Note: After niyo lagyan ng image yung array sa habitat image array lagyan niyo naman ng name, dapat match sa index ng habitat image and habitat name.
final _habitatInfo = [
  'Philippine Tree are among the most valuable natural resources in the Philippines. They provide a range of ecosystem services, ranging from the provision of food crops, livestock and fish to providing recreational experiences.',
  'Philippine Forest are among the most valuable natural resources in the Philippines. They provide a range of ecosystem services, ranging from the provision of food crops, livestock and fish to providing recreational experiences.',
  'The areas that provide the most suitable environment include a mixture of hardwoods croplands brushlands and pasturelands. They prefer an interspersed habitat including meadows forested woodlots brushy areas and croplands.',
  'Eagles live within two and a half miles of the coast, bays, rivers, lakes, or other bodies of water, reflecting the availability of their main food source. They typically nest in large, mature, accessible trees, as well as cliffs and man-made structures.',
  'Philippine tarsiers are found in areas of tall grasses, bushes, bamboo shoots, and small trees in tropical rainforests. They enjoy the canopy of the jungle leaping from limb to limb. Tarsiers usually do not move using four limbs rather they have developed excellent leaping skills.',
  'Adults of most species are found in shallow, coastal waterbays lagoons and estuaries. Some also venture into the open sea. Juveniles of some species may be found in bays and estuaries as well as at sea.',
  'In the wild, water buffalo are found in tropical and subtropical forests as well as wet grasslands. They are considered terrestrial but are heavily dependent on water and spend a majority of time wallowing in rivers or mud holes.',
  'They utilize rainforest scrublands eucalyptus grove forest mangrove and open country',
  'Presently live on two Visayan islands located in the central Philippines Panay Island and Negros Island. They are found in dens, tropical rainforests',
  'Commonly known as "sea cows," dugongs graze peacefully on sea grasses in shallow coastal waters of the Indian and western Pacific Oceans.',
  'Palawan peacock pheasants inhabit the Palawan Islands humid, coastal lowland and deep forests. Diet consists of a variety of seeds, grains, nuts, fruit, leaves, roots, slugs, worms, and insects.',
  'The African civet is rarely found in arid regions; however, it can be found along river systems that project into the arid areas of Niger, Mali, and Chad',
  'Bats can be found in almost all parts of the world and in most regions of the United States. In general, bats seek out a variety of daytime retreats such as caves, rock crevices, old buildings, bridges, mines, and trees.',
  'Domestic cats primarily live in areas of human habitation and are somewhat constrained to developed areas',
  'Domestic dogs primarily live in areas of human habitation and are somewhat constrained to developed areas',
  'Hamsters are found throughout much of Europe and Asia. All hamsters are nocturnal, or active at night. They have terrible eyesight but their senses of smell and touch, as well as their whiskers, help them navigate.',
  'Their distribution includes Sub-Saharan Africa and the Indian subcontinent to the Philippines and the Solomon Islands, but no genus is found in both Africa and Asia.',
  'They live in tropical savanna forests but range widely over the islands, from beach to ridge top. Komodo dragons eat almost any kind of meat, scavenging for carcasses or stalking animals that range in size from small rodents to large water buffalo.',
  'Owls live in a variety of habitats, including coniferous forests, mountains, deserts, and plains. The snowy owl lives in the cold tundra of the north.',
  'All crocodiles are semiaquatic and tend to congregate in freshwater habitats such as rivers, lakes, wetlands and sometimes in brackish water and saltwater.',
  'It is endemic to the Philippine forests and woodlands, but especially in the mangrove forests of western central Philippines— particularly in Palawan, the Visayas, and Mindanao'
];

class _HabitatScreenState extends State<HabitatScreen> {
  @override
  Widget build(BuildContext context) {
    double fem = MediaQuery.of(context).size.width / 360;
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: (MediaQuery.of(context).size.width),
                height: (MediaQuery.of(context).size.height * 0.6),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                      image: AssetImage(_habitatImage[globals.habitatIndex]),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Align(
              // rectangle14h7E (4:113)
              alignment: Alignment.bottomCenter,
              child: Align(
                child: Padding(
                  padding: EdgeInsets.only(
                      top: (MediaQuery.of(context).size.height * 0.9) / 2),
                  child: SizedBox(
                    width: (MediaQuery.of(context).size.width),
                    height: (MediaQuery.of(context).size.height * 0.85),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30 * fem),
                          topLeft: Radius.circular(30 * fem),
                        ),
                        color: const Color(0xff345524),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 25, left: 15),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage(
                                title: 'Home',
                              )),
                    );
                  },
                  icon: const Icon(Icons.arrow_back),
                  color: Colors.white,
                  iconSize: 30,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 40, left: 25),
                child: Text(
                  _habitatName[globals.habitatIndex],
                  style: const TextStyle(
                      fontSize: 24,
                      fontFamily: 'Fredoka-One',
                      color: Color(0xff6b9d11)),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 25, top: 225, right: 25),
                child: Text(
                  _habitatInfo[globals.habitatIndex],
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'Raleway',
                    color: Colors.white,
                    height: 1.2,
                    letterSpacing: 1.75,
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
