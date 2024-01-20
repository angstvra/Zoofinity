import 'package:flutter/material.dart';
import 'package:zoofinity/globals.dart' as globals;
import 'package:zoofinity/screens/homePage.dart';

class Animals2 extends StatefulWidget {
  const Animals2({super.key});

  @override
  State<Animals2> createState() => _Animals2State();
}

/*
  
  Note: For animal description, search kayo ng image ng animal (actually yung image array neto is same lang dun sa image nung nasa homePage), 
  name, other name, description, kingdom, and yung curr status nila.
  then same procedure i lagay niyo yung data sa array then i-match niyo yung description ng animal info base sa array index. 

 */

// animal image
final _image = [
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

// animal name
final _name = [
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
  "Gray\'s Monitor",
  'Mindanao Bleeding-Heart',
  'Panay Cloudrunner',
  'Domestic Pigeon',
  'Philippine Sailfin Lizard',
  'Chicken',
];

// animal other name
final _name2 = [
  'Boiga Angulata',
  'Arctictis binturong',
  'Rusa Marianna',
  'Pithecophaga Jefferyi',
  'Carlito syrichta',
  'Siebenrockiella leytensis',
  'Bubalus Bubalis',
  'Cacatua Haematuropygia',
  'Sus philippensis',
  'Sea cow',
  'Polyplectron napoleonis',
  'Paradoxurus hermaphroditus',
  'Chiroptera',
  'Canis lupus',
  'Felis catus',
  'Cricetinae',
  'Penelopides affinis',
  'Varanus komodoensis',
  'Strigiformes',
  'Crocodylus mindorensis',
  'Cercopithecidae',
  'Manis culionensis',
  'Bubalus mindorensis',
  'Pteropus dasymallus',
  'Varanus olivaceus',
  'Gallicolumba crinigera',
  'Crateromys heaneyi',
  'Columba livia domestica',
  'Hydrosaurus pustulatus',
  'Gallus gallus domesticus',
];

// animal description

final _description = [
  'Boiga angulata, commonly known as the Leyte cat snake or Philippine blunt-headed tree snake, is a species rear-fanged of snake in the family Colubridae. The species is endemic to the Philippines. It is considered mildly venomous.',
  'The binturong is long and heavy, with short, stout legs. It has a thick coat of coarse black hair. The bushy and prehensile tail is thick at the root, gradually tapering, and curls inwards at the tip. The muzzle is short and pointed, somewhat turned up at the nose, and is covered with bristly hairs, brown at the points, which lengthen as they diverge, and form a peculiar radiated circle round the face.',
  'The Philippine deer is a vulnerable deer species native to the Philippines. It is generally brown in color with a white tail underside. Antlers are common among males and measure 20 to 40 cm.',
  'It is considered the largest of the extant eagles in the world in terms of length and wing surface area. It has been declared the national bird of the Philippines. The most significant threat to the species is loss of habitat, a result of high levels of deforestation throughout most of its range.',
  'Any of about 13 species of small leaping primates found only on various islands of Southeast Asia, including the Philippines. Tarsiers are intermediate in form between lemurs and monkeys, measuring only about 9–16 cm (3.5–6 inches) long, excluding a tail of about twice that length.',
  'The Philippine forest turtle is a critically endangered freshwater turtle native to the Philippines. Its plastron is reddish-brown to black in color, sometimes with blotches of yellow. In juveniles, the plastron is a uniform yellow. The bridge (the hinge connecting plastron and carapace) is the same color as the plastron.',
  'Commonly raised livestock specie in the Philippines and Region VII in particular. Generally considered as a backyard activity among farmers, this domesticated animal has gained remarkable importance in the past years as a vital component in food sustainability and income to farmers.',
  'The red-vented cockatoo, also known as the Philippine cockatoo and locally katala, abukay, agay or kalangay, is a species of cockatoo',
  'Philippine warty pigs have two pairs of warts, with a tuft of hair extending outwards from the warts closest to the jaw. It has multiple native common names but it is most widely known as baboy damo bush pig in Tagalog.',
  'The Dugong is a large grey brown bulbous animal with a flattened fluked tail like that of a whale no dorsal fin paddle like flippers and distinctive head shape. The broad flat muzzle and mouth are angled down to enable ease of grazing along the seabed.',
  'The Palawan Peacock-pheasant is a critically endangered bird species endemic to the island of Palawan in the Philippines. It is known for its distinctive and colorful plumage, which features iridescent green, blue, and bronze feathers. The species is threatened by habitat loss and hunting, and conservation efforts are underway to protect and preserve its population.',
  'The Asian palm civet is a small mammal with a long furry tail and a pointed snout. Its long, stocky body is covered with coarse, shaggy hair that is usually greyish in colour.',
  'Bats are mainly nocturnal, most often flying at dawn and dusk. They fly very quickly and can make fast maneuvers. Bats congregate in large roosts during their winter hibernation and migration.',
  'It has a strong flexible body, quick reflexes, sharp teeth, and retractable claws adapted to killing small prey like mice and rats. Its night vision and sense of smell are well developed.',
  'Indigenous mixed-breed dogs in the Philippines is askal, also known as aspin. Aspins are recognized for being incredibly affectionate and nice to everyone, especially with children.',
  'They are small to large muroid rodents with compact bodies, small, furry ears, short legs, wide feet, and short stubby tails',
  'The Mindanao hornbill (Penelopides affinis ), sometimes called the Mindanao tarictic hornbill, is a medium-small species of hornbill found in the canopy of rainforests on Mindanao, Dinagat, Siargao and Basilan in the southern Philippines. As is the case with all Philippine tarictic hornbills, it has been considered a subspecies of P. panini. The Samar hornbill is often included as a subspecies of the Mindanao hornbill.',
  'large lizards with long tails, strong and agile necks, and sturdy limbs. Their tongues are yellow and forked. Adults are an almost-uniform stone color with distinct and large scales.',
  'Owls eyes face forward, like humans do. Most owl species are active at night, not in the daytime. There are about 250 species of owls in the world.',
  'The Philippine crocodile (Crocodylus mindorensis ), also known as the Mindoro crocodile, the Philippine freshwater crocodile, the bukarot in Ilocano, and more generally as a buwaya in most Filipino lowland cultures, is one of two species of crocodiles found in the Philippines; the other is the larger saltwater crocodile (Crocodylus porosus).',
  'Most species run along branches rather than swinging arm over arm like the apes. Monkeys are highly social omnivores, organized in clans as large as several hundred individuals headed by an old male.',
  'The Philippine pangolin or Palawan pangolin (Manis culionensis ), also locally known as balintong, is a pangolin species endemic to the Palawan province of the Philippines. Its habitat includes primary and secondary forests, as well as surrounding grasslands. This species is moderately common within its limited range, but is at risk due to heavy hunting because of its valued scales and meat.',
  'The tamaraw or Mindoro dwarf buffalo (Bubalus mindorensis ) is a small hoofed mammal belonging to the family Bovidae. It is endemic to the island of Mindoro in the Philippines, and is the only endemic Philippine bovine. It is believed, however, to have once also thrived on the larger island of Luzon. The tamaraw was originally found all over Mindoro, from sea level up to the mountains (2000 m above sea level), but because of human habitation, hunting, and logging, it is now restricted to only a few remote grassy plains and is now a critically endangered species.',
  'The Ryukyu flying fox or Ryukyu fruit bat (Pteropus dasymallus ) is a species of megabat in the family Pteropodidae. It is found in Japan, Taiwan, and the Batanes and Babuyan Islands of the Philippines. Its natural habitats are subtropical or tropical dry forests and subtropical or tropical swamps. It is threatened by habitat loss and by hunting for food and the IUCN classify it as "Vulnerable".',
  "The Gray\'s monitor (Varanus olivaceus ) is a large (180 cm, > 9 kg) monitor lizard known only from lowland dipterocarp forest in southern Luzon, Catanduanes, and Polillo Island, all islands in the Philippines. It is also known as Gray\'s monitor lizard, butaan, and ornate monitor. It belongs to the subgenus Philippinosaurus. It is largely arboreal and extremely shy."
  "The Mindanao bleeding-heart (Gallicolumba crinigera ), also known as Bartlett\'s bleeding heart dove, Barlett's bleeding heart pigeon and the hair-breasted bleeding heart, is a species of bird in the pigeon family. It is endemic to the Philippines on the islands of Mindanao, Basilan, Samar, Leyte and Bohol. It is so named because of a red blotch on its breast. The generic name derives from a fusion of the Latin gallus (\"chicken\") and columba (\"pigeon\").",
  'The Panay cloudrunner is a little over 600 mm long, with grizzled greyish-brown fur and a long, bushy tail making up more than half of the body length. It weighs around 1 kilogram.',
  "The domestic pigeon (Columba livia domestica ) is a pigeon subspecies that was derived from the rock dove (also called the rock pigeon). The rock pigeon is the world/'s oldest domesticated bird. Mesopotamian cuneiform tablets mention the domestication of pigeons more than 5,000 years ago, as do Egyptian hieroglyphics. Research suggests that domestication of pigeons occurred as early as 10,000 years ago.",
  'The Philippine sailfin lizard, crested lizard, sail-fin lizard, sailfin water lizard, soa-soa water lizard (Hydrosaurus pustulatus ) or its native name ibid is an oviparous lizard endemic to several of the islands that make up the Philippines and is also found in New Guinea and some parts of Eastern Indonesia. The Philippine Sailfin Lizard is a protected species in its native country of the Philippines as it is a target for exotic pet collectors and sought after in the international pet trade.',
  'The chicken (Gallus domesticus ) is a domesticated junglefowl species, with attributes of wild species such as the grey and the Ceylon junglefowl that are originally from Southeastern Asia. Rooster or cock is a term for an adult male bird, and a younger male may be called a cockerel.',
];

// animal kingdom
final _kingdom = [
  'Animalia & Reptalia',
  'Animalia & Mammalia',
  'Animalia & Mammalia',
  'Animalia & Aves',
  'Animalia & Mammalia',
  'Animalia & Reptilia',
  'Bovidae & Mammalia',
  'Animalia & Cacatuidae',
  'Animalia & S.cebifrons',
  'Sirenia & Mammalia',
  'Animalia & Aves',
  'Animalia & Mammalia',
  'Animalia & Eukaryota',
  'Animalia & Polychaeta',
  'Animalia & Mammalia',
  'Animalia & Cricetidae',
  'Animalia & Aves',
  'Animalia & Reptilia',
  'Animalia & Aves',
  'Animalia & Reptilia',
  'Animalia & Mammalia',
  'Animalia & Mammalia',
  'Animalia & Mammalia',
  'Animalia & Mammalia',
  'Animalia & Reptilia',
  'Animalia & Aves',
  'Animalia & Mammalia',
  'Animalia & Aves',
  'Animalia & Reptilia',
  'Animalia & Aves',
];
// animal status
final _status = [
  'Least Concern',
  'Vulnerable',
  'Vulnerable',
  'Critically Endangered',
  'Near Threatened',
  'Critically Endangered',
  'Critically Endangered',
  'Endangered',
  'Endangered',
  'Critically Endangered',
  'Vulnerable',
  'Least Concern',
  'Threatened',
  'Near Threatened',
  'Near Threatened',
  'Critically Endangered',
  'Least Concern',
  'Endangered',
  'Near Threatened',
  'Critically Endangered',
  'Near Threatened'
  'Critically Endangered',
  'Critically Endangered',
  'Vulnerable',
  'Vulnerable',
  'Vulnerable',
  'Endangered',
  'Least Concern',
  'Vulnerable',
  'Least Concern',
];

class _Animals2State extends State<Animals2> {
  @override
  Widget build(BuildContext context) {
    double fem = MediaQuery.of(context).size.width / 360;
    return Scaffold(
      body: Container(
        // animals2Ybi (4:108)
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: const Color(0xffefece4),
          borderRadius: BorderRadius.circular(10 * fem),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: (MediaQuery.of(context).size.width),
                height: (MediaQuery.of(context).size.height * 0.42),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                      image: AssetImage(_image[globals.animalIndex]),
                      fit: BoxFit.cover),
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
            Positioned(
              // rectangle14h7E (4:113)
              left: 0,
              top: 300,
              child: Align(
                child: SizedBox(
                  width: (MediaQuery.of(context).size.width),
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30 * fem),
                      color: const Color(0xff345524),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: (MediaQuery.of(context).size.width),
                height: MediaQuery.of(context).size.height * 0.53,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30 * fem),
                      topLeft: Radius.circular(30 * fem),
                    ),
                    color: const Color(0xff6b9d11),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 325),
                child: Text(
                  _name[globals.animalIndex],
                  style: const TextStyle(
                      fontFamily: 'Fredoka-One',
                      fontSize: 24,
                      color: Color(0xff6b9d11)),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 365),
                child: Text(
                  _name2[globals.animalIndex],
                  style: const TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 16,
                      letterSpacing: 1.5,
                      color: Colors.white),
                ),
              ),
            ),
            Positioned(
              // consideredthelargestoftheextan (4:122)
              left: 24,
              top: 510,
              child: Align(
                child: SizedBox(
                  width: 315,
                  height: 300,
                  child: Text(
                    _description[globals.animalIndex],
                    style: const TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      height: 1.2,
                      letterSpacing: 1.75,
                      color: Color(0xffefece4),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // animaliaavesniL
              left: 24,
              top: 445,
              child: Align(
                child: Text(
                  _kingdom[globals.animalIndex],
                  style: const TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    height: 1.175,
                    color: Color(0xffefece4),
                  ),
                ),
              ),
            ),
            Positioned(
              // criticallyendangeredRW
              left: 193,
              top: 445,
              child: Align(
                child: Text(
                  _status[globals.animalIndex],
                  style: const TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    height: 1.175,
                    color: Color(0xffefece4),
                  ),
                ),
              ),
            ),
            const Positioned(
              // overviewFVS (4:117)
              left: 24,
              top: 480,
              child: Text(
                'Overview:',
                style: TextStyle(
                  fontFamily: 'Fredoka-One',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  height: 1.2575,
                  color: Color(0xff345524),
                ),
              ),
            ),
            const Positioned(
              // kingdomclassgak (4:118)
              left: 24,
              top: 418,
              child: Text(
                'Kingdom & class:',
                style: TextStyle(
                  fontFamily: 'Fredoka-One',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  height: 1.2575,
                  color: Color(0xff345524),
                ),
              ),
            ),
            const Positioned(
              // statusvjz (4:119)
              left: 193,
              top: 418,
              child: Text(
                'Status:',
                style: TextStyle(
                  fontFamily: 'Fredoka-One',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  height: 1.2575,
                  color: Color(0xff345524),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
