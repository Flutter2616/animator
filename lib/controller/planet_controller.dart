import 'package:animator/modal/planet_modal.dart';
import 'package:get/get.dart';

class Planetcontroller extends GetxController {
  List<Planetmodal> planetlist = [
    Planetmodal(
        name: "Mercury",bgimage: "assets/mercurybg.png",
        image: "assets/planet_image/mercury.png",
        details:
            "Mercury is the first planet from the Sun and the smallest planet in the Solar System. It is a terrestrial planet with a heavily cratered surface due to the planet having no geological activity and an extremely tenuous atmosphere (called an exosphere)."),
    Planetmodal(
        name: "Venus",bgimage: "assets/venusbg.jpg",
        image: "assets/planet_image/venus.png",
        details:
            "Venus is the second planet from the Sun. It is a rocky planet with the densest atmosphere of all the rocky bodies in the Solar System, and the only one with a mass and size that is close to that of its orbital neighbour Earth."),
    Planetmodal(
        name: "Earth",bgimage: "assets/earth_bg.jpg",
        image: "assets/planet_image/earth.png",
        details:
            "Earth is the third planet from the Sun and the only place known in the universe where life has originated and found habitability. Earth is the only planet known to sustain liquid surface water, with ocean water extending over 70.8% of the planet, making it an ocean world. "),
    Planetmodal(
        name: "Mars",bgimage: "assets/marsbg.png",
        image: "assets/planet_image/mars.png",
        details:
            "Mars is the fourth planet and the furthest terrestrial planet from the Sun. The reddish color of its surface is due to finely grained iron(III) oxide dust in the soil, giving it the nickname the Red Planet."),
    Planetmodal(
        name: "Jupiter",bgimage: "assets/jupiterbg.jpeg",
        image: "assets/planet_image/jupiter.png",
        details:
            "Jupiter is the fifth planet from the Sun and the largest in the Solar System. It is a gas giant with a mass more than two and a half times that of all the other planets in the Solar System combined, and slightly less than one one-thousandth the mass of the Sun."),
    Planetmodal(
        name: "Saturn",bgimage: "assets/saturnbg.png",
        image: "assets/planet_image/saturn.png",
        details:
            "Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. It is a gas giant with an average radius of about nine and a half times that of Earth"),
    Planetmodal(
        name: "Uranus",bgimage: "assets/uarnusbg.jpg",
        image: "assets/planet_image/uranus.png",
        details:
            "Uranus is the seventh planet from the Sun and is a gaseous cyan ice giant. Most of Uranus is made out of water, ammonia, and methane in a supercritical phase of matter, which in astronomy is called 'ice' or volatiles."),
    Planetmodal(
      name: "Neptune",bgimage: "assets/neptunebg.png",
      image: "assets/planet_image/neptune.png",
      details:
          "Neptune is the eighth planet from the Sun and the farthest known planet in the Solar System. It is the fourth-largest planet in the Solar System by diameter, the third-most-massive planet, and the densest giant planet. It is 17 times the mass of Earth, and slightly more massive than its near-twin Uranus.",
    ),
  ];
}
