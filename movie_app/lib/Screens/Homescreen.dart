import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:movie_app/Model/Detailmodel.dart';
import 'package:movie_app/Screens/DetailsScreen.dart';
import 'package:movie_app/Screens/Siginscreen.dart';
import 'package:movie_app/Screens/gridscreen.dart';
import 'package:movie_app/Widget/Listviewwidgett.dart';
import 'package:movie_app/Widget/animatedwidget.dart';
import 'package:movie_app/Widget/bottomnavbar.dart';
import 'package:movie_app/Widget/catagoryslider.dart';
import 'package:movie_app/Widget/poplistwidget.dart';
import 'package:movie_app/Widget/popularwidget.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

  final List<String> listmove = [
    "assets/images/spiderman.jpg",
    "assets/images/batman.jpg",
    "assets/images/jon.jpg",
    "assets/images/MI.jpg",
    "assets/images/ava.jpg",
    "assets/images/boys.jpg",
    "assets/images/pur.jpg",
    "assets/images/hod.jpg",
    "assets/images/dd.jpg",
    "assets/images/god.jpg",
    "assets/images/wol.jpg",
    "assets/images/boy.jpg",
  ];

  final List<String> animatedlist = [
    "assets/images/car.jpg",
    "assets/images/em.jpg",
    "assets/images/gd.jpg",
    "assets/images/i.jpg",
    "assets/images/inside.jpg",
    "assets/images/mu.jpg",
    "assets/images/onw.jpg",
  ];

  final List<String> poplist = [
    "assets/images/em.jpg",
    "assets/images/spiderman.jpg",
    "assets/images/batman.jpg",
    "assets/images/jon.jpg",
    "assets/images/MI.jpg",
    "assets/images/ava.jpg",
    "assets/images/boys.jpg",
    "assets/images/pur.jpg",
    "assets/images/hod.jpg",
    "assets/images/dd.jpg",
    "assets/images/god.jpg",
    "assets/images/wol.jpg",
    "assets/images/boy.jpg",
    "assets/images/car.jpg",
    "assets/images/gd.jpg",
    "assets/images/i.jpg",
    "assets/images/inside.jpg",
    "assets/images/mu.jpg",
    "assets/images/onw.jpg",
  ];

  List<Detailmodel> modellist = [
    Detailmodel(
        discription:
            "Elemental (2023) is an animated film by Pixar that unfolds in the vibrant Element City, where the classical elements—fire, water, earth, and air—are personified as living beings with distinct cultures. The story follows Ember Lumen, a fiery and headstrong young woman, and Wade Ripple, a calm and empathetic man made of water. As they meet and navigate their differences, they discover that despite their contrasting natures, they have much to learn from each other, leading to a touching journey of understanding, acceptance, and the power of connection.",
        imageurl: "assets/images/em.jpg",
        title: "Elementals"),
    Detailmodel(
        discription:
            "Spider-Man: No Way Home (2021) is a Marvel Studios film directed by Jon Watts. The story picks up after the events of Spider-Man: Far From Home, with Peter Parker's secret identity as Spider-Man exposed and his life turned upside down. Seeking to fix his situation, Peter turns to Doctor Strange for help, leading to a spell gone wrong that opens the multiverse and brings villains from other dimensions into his world. As Peter faces off against iconic adversaries like Doctor Octopus, Green Goblin, and Electro, he grapples with the consequences of his actions and the weight of his responsibilities. The film explores themes of redemption, sacrifice, and the complexities of heroism, culminating in an emotional and action-packed narrative.",
        imageurl: "assets/images/spiderman.jpg",
        title: "Spiderman- No Way home"),
    Detailmodel(
        discription:
           " Batman encompasses various film adaptations of the iconic DC Comics superhero Bruce Wayne, who becomes the vigilante Batman to fight crime in Gotham City. Tim Burton's 1989 film reintroduced the character with Michael Keaton as Batman and Jack Nicholson as the Joker, while Christopher Nolan's 2008 The Dark Knight featured Christian Bale and an acclaimed performance by Heath Ledger as the Joker, exploring themes of chaos and morality. The 2022 film The Batman, directed by Matt Reeves and starring Robert Pattinson, presents a darker, detective-focused portrayal of the hero in his early years, delving into Gotham City's corruption and Batman's role in addressing it.",
        imageurl: "assets/images/batman.jpg",
        title: "Batman"),
    Detailmodel(
        discription:
            "John Wick (2014) is an action-packed film directed by Chad Stahelski, starring Keanu Reeves as the titular character, a retired hitman seeking vengeance after a group of criminals, led by Iosef Tarasov, kill his beloved dog—a final gift from his recently deceased wife. The film is known for its stylish, choreographed action sequences and Reeves's intense performance, as John Wick navigates a world of assassins and criminal organizations while revealing his formidable skills and unyielding resolve. The film's unique blend of sleek visuals, intricate fight scenes, and a compelling revenge narrative has made it a modern action classic.",
        imageurl: "assets/images/jon.jpg",
        title: "John Wick"),
    Detailmodel(
        discription:
            "Mission: Impossible is a high-octane action film series starring Tom Cruise as Ethan Hunt, a skilled secret agent working for the Impossible Mission Force (IMF). The franchise, which began with the 1996 film directed by Brian De Palma, is known for its complex plots, daring stunts, and intricate espionage scenarios. Each film follows Hunt and his team as they tackle seemingly impossible missions involving espionage, betrayal, and high-stakes action, often featuring elaborate set pieces and jaw-dropping stunts performed by Cruise himself. The series is celebrated for its suspenseful storytelling, inventive action sequences, and its ability to reinvent itself with each installment.",
        imageurl: "assets/images/MI.jpg",
        title: "Mission Impossible"),
    Detailmodel(
        discription:
            "Avatar (2009), directed by James Cameron, is a groundbreaking science fiction film set on the lush, alien world of Pandora. The story follows Jake Sully, a paraplegic former Marine played by Sam Worthington, who participates in the Avatar Program, allowing him to control a genetically engineered Na'vi body. As he becomes immersed in the Na'vi culture and their struggle against human exploitation, Jake faces a moral dilemma and ultimately joins the Na'vi in their fight to protect their home from destructive corporate forces. Known for its revolutionary use of 3D technology and visual effects, Avatar explores themes of environmentalism, imperialism, and the clash between industrial and indigenous worlds.",
        imageurl: "assets/images/ava.jpg",
        title: "Avatar"),
    Detailmodel(
        discription:
            "The Boys is a television series based on the comic book of the same name by Garth Ennis and Darick Robertson. Set in a world where superheroes are corrupt and abuse their powers, the show follows a group of vigilantes known as The Boys, led by Billy Butcher, played by Karl Urban. The group aims to take down the supes, particularly those associated with the powerful corporation Vought International. The series is known for its dark humor, graphic violence, and sharp satire, offering a gritty and often brutal critique of superhero culture and corporate influence. It explores themes of power, corruption, and the complexities of heroism in a society where the line between hero and villain is blurred.",
        imageurl: "assets/images/boys.jpg",
        title: "The Boys"),
    Detailmodel(
        discription:
            "Mirzapur is an Indian crime drama series created by Karan Anshuman and Puneet Krishna, set in the lawless town of Mirzapur in Uttar Pradesh. The show follows the violent and tumultuous world of gangsters and power struggles, focusing on the rise of the Tripathi family, who run an illegal empire of weapons and drugs. As the family's influence grows, so does their conflict with rival factions and law enforcement. The series is known for its gritty portrayal of crime, complex characters, and intense storytelling, offering a raw and unfiltered look at the interplay of power, violence, and corruption in the region.",
        imageurl: "assets/images/pur.jpg",
        title: "Mirzapur"),
    Detailmodel(
        discription:
            "House of the Dragon is a fantasy television series and a prequel to Game of Thrones, based on George R.R. Martin's novel Fire & Blood.Created by Ryan Condal and Miguel Sapochnik, the show explores the history of House Targaryen, focusing on the events leading up to the Targaryen civil war, known as the Dance of the Dragons. Set approximately 200 years before the events of Game of Thrones,the series delves into the complex dynamics of the Targaryen family, their dragons, and the political intrigue and power struggles that shape their destiny. The show is known for its epic scale, intricate storytelling, and rich visual world-building.",
        imageurl: "assets/images/hod.jpg",
        title: "House of Dragons"),
    Detailmodel(
        discription:
           "Despicable Me 4 (2024) continues the adventures of Gru, his family, and the mischievous Minions. In this installment, Gru faces a new challenge as he battles a formidable new villain while juggling his life as a supervillain and a father. The film is expected to feature the series' signature blend of humor, heart, and action, with plenty of comedic antics from the Minions and a deeper exploration of Gru's character and his evolving relationships with his family. As with previous films, Despicable Me 4 combines fun, family-friendly entertainment with engaging animation and a playful storyline.",
        imageurl: "assets/images/dd.jpg",
        title: "Despicable Me4"),
    Detailmodel(
        discription:
            "Godzilla Minus One (2023) is a Japanese kaiju film directed by Takashi Yamazaki. The film is a new entry in the Godzilla franchise, exploring a fresh narrative within the iconic series. Set in a post-war Japan, the story delves into the aftermath of Godzilla's rampage and its impact on the country. As Japan grapples with the devastation caused by the monster, it must confront new threats and challenges while trying to rebuild. The film combines traditional kaiju action with a focus on the human and societal consequences of Godzilla's presence, offering a blend of dramatic storytelling and spectacular monster scenes.",
        imageurl: "assets/images/god.jpg",
        title: "Godzilla Minus One"),
    Detailmodel(
        discription:
            "Deadpool & Wolverine refers to the anticipated crossover film featuring Deadpool and Wolverine, with Ryan Reynolds reprising his role as Deadpool and Hugh Jackman returning as Wolverine. This film, officially titled Deadpool 3, continues the irreverent and comedic tone of the Deadpool series while incorporating Wolverine into the storyline. Set within the Marvel Cinematic Universe (MCU), it promises to blend Deadpool's trademark humor and meta-commentary with Wolverine's intense and action-packed persona, exploring their dynamic and contrasting personalities. The film is highly anticipated by fans for its potential to deliver unique interactions and a fresh take on both characters.",
        imageurl: "assets/images/wol.jpg",
        title: "Deathpool & Wolverine"),
    Detailmodel(
        discription:
            "Bad Boys: Detectives is a film that continues the popular Bad Boys franchise, known for its action-packed sequences and comedic chemistry between its leads. In this installment, the dynamic duo of Detectives Mike Lowrey (Will Smith) and Marcus Burnett (Martin Lawrence) return to tackle a new high-stakes case. The film features their trademark blend of high-octane action, sharp humor, and thrilling plot twists as they navigate dangerous criminal activities and personal challenges. The franchise is celebrated for its fast-paced storytelling, memorable one-liners, and the chemistry between Smith and Lawrence.",
        imageurl: "assets/images/boy.jpg",
        title: "Bad Boys Detectives"),
    Detailmodel(
        discription:
             "Cars (2006) is an animated film produced by Pixar Animation Studios and released by Walt Disney Pictures. Directed by John Lasseter, the film is set in a world where vehicles are living beings with their own personalities and experiences. The story follows Lightning McQueen, a race car voiced by Owen Wilson, who finds himself stranded in the small town of Radiator Springs after a major race. As Lightning McQueen spends time in the town, he learns valuable lessons about friendship, humility, and community. The film is known for its vibrant animation, engaging characters, and heartfelt messages about personal growth and the importance of relationships.",
        imageurl: "assets/images/car.jpg",
        title: "Cars"),
    Detailmodel(
        discription:
            "The Good Dinosaur (2015) is an animated film produced by Pixar Animation Studios and released by Walt Disney Pictures. Directed by Peter Sohn, the film imagines a world where dinosaurs never went extinct and coexisted with early humans. The story follows Arlo, a young Apatosaurus, who becomes separated from his family and embarks on a journey to find his way back home. Along the way, he befriends a young human boy named Spot, and together they navigate the challenges of their prehistoric world. The film explores themes of bravery, friendship, and self-discovery, featuring stunning animation and a heartfelt narrative.",
        imageurl: "assets/images/gd.jpg",
        title: "Good Dinosaur"),
    Detailmodel(
        discription:
            "The Incredibles (2004) is an animated superhero film produced by Pixar Animation Studios and directed by Brad Bird. The story follows the Parr family, who have superpowers but are forced to live undercover due to a ban on superheroes. When a new villain emerges, the family must come out of retirement and reunite to save the world. The film blends action, humor, and family dynamics, highlighting themes of identity, responsibility, and the importance of teamwork. It is celebrated for its creative take on the superhero genre, engaging characters, and stylish animation.",
        imageurl: "assets/images/i.jpg",
        title: "The Incredible"),
    Detailmodel(
        discription:
            "Inside Out 2 (2024) is the sequel to Pixar's 2015 film Inside Out. Directed by Kelsey Mann, this installment continues to explore the inner emotional world of Riley, now a teenager. The film delves into new emotional experiences and challenges as Riley navigates adolescence, adding new characters and emotions to the mix. The sequel builds on the original's innovative concept of personifying emotions and focuses on the complexities of growing up, friendship, and self-discovery. With its blend of humor, heart, and creative storytelling, Inside Out 2 aims to offer a fresh and insightful look into the emotional landscape of its characters.",
        imageurl: "assets/images/inside.jpg",
        title: "Inside Out2"),
    Detailmodel(
        discription:
            "Monsters University (2013) is a prequel to Pixar's 2001 film Monsters, Inc. Directed by Dan Scanlon, the film explores the backstory of beloved monsters Mike Wazowski and James P. Sulley Sullivan. Set in their college years, it follows their journey from rivals to best friends as they navigate the challenges of university life and work towards their dream of becoming top scarers. The film blends humor and heart with a look at themes like friendship, competition, and personal growth, showcasing Pixar's signature animation style and storytelling.",
        imageurl: "assets/images/mu.jpg",
        title: "Monster University"),
    Detailmodel(
        discription:
            "Onward (2020) is an animated film produced by Pixar Animation Studios and directed by Dan Scanlon. The story is set in a modern fantasy world where magical creatures have abandoned their magical abilities for technology. It follows two teenage elf brothers, Ian and Barley Lightfoot, who embark on a quest to discover if there's still a little magic left in their world. Their journey is driven by Ian's desire to spend one more day with their deceased father, and the film explores themes of family, adventure, and self-discovery. With its blend of heartfelt moments and imaginative world-building, Onward offers a touching and creative story about brotherhood and the power of believing in oneself.",
        imageurl: "assets/images/onw.jpg",
        title: "Onward"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: AnimatedOpacity(
        duration: const Duration(seconds: 2),
        opacity: _opacity,
        curve: Curves.easeIn,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 200),
                    child: SizedBox(
                      width: 100,
                      height: 100,
                      child:
                          LottieBuilder.asset("assets/images/sduyow0DYf.json"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: IconButton(
                      style:
                          IconButton.styleFrom(backgroundColor: Colors.white),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: IconButton(
                      style:
                          IconButton.styleFrom(backgroundColor: Colors.white),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Siginscreen(),
                            ));
                      },
                      icon: const Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [Catagoryslider()],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                height: 20,
              ),
              CarouselSlider.builder(
                  itemCount: modellist.length,
                  itemBuilder: (context, index, realIndex) {
                    final item = modellist[index];

                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  Detailsscreen(detail: modellist[index]),
                            ));
                      },
                      child: Column(
                        children: [
                          Hero(
                              tag: item.imageurl,
                              child: Image.asset(item.imageurl, height: 320)),
                        ],
                      ),
                    );
                  },
                  options: CarouselOptions(
                    height: 385,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    viewportFraction: 0.6,
                  )),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "Trending",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Gridscreen(),
                            ));
                      },
                      child: const Text(
                        "view all",
                        style: TextStyle(fontSize: 17, color: Colors.blue),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 200,
                child: Listviewwidgett(listmove: listmove),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "Popular",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 75),
                    child: SizedBox(
                      child: Popularwidget(),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 200,
                child: Poplistwidget(poplist: poplist),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "Animated Movies",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      "view all",
                      style: TextStyle(fontSize: 17, color: Colors.blue),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 200,
                child: Animatedwidget(animatedlist: animatedlist),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const Bottomnavbar(),
    );
  }
}
