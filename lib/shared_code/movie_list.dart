import 'package:flutter/material.dart';
import 'package:marvel_cinematic_universe/objects/movie_object.dart';
import 'package:marvel_cinematic_universe/screens/movie_detail_screen.dart';
import 'package:marvel_cinematic_universe/shared_code/text_widgets.dart';

class MovieList extends StatefulWidget {
  const MovieList({Key? key}) : super(key: key);

  @override
  State<MovieList> createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  final List<Widget> _movieTiles = [];
  final GlobalKey _listKey = GlobalKey();

  @override
  void initState() {
    _initializeTheMovies();
  }
  void _initializeTheMovies(){
    List<Movie> _movies =[
      Movie(name: "Iron Man", image: "iron_man.jpg", duration: "2h 6m", rating: "7.9", year: "2008", details: "When Tony Stark, an industrialist, is captured, he constructs a high-tech armoured suit to escape. Once he manages to escape, he decides to use his suit to fight against evil forces to save the world."),
      Movie(name: "The Incredible Hulk", image: "the_incredible_hulk.jpg", duration: "1h 52m", rating: "6.6", year: "2008", details: "Dr Bruce Banner subjects himself to high levels of gamma radiation which triggers his transformation into a huge green creature, the Hulk, whenever he experiences negative emotions such as anger."),
      Movie(name: "Iron Man 2", image: "iron_man_2.jpg", duration: "2h 5m", rating: "6.9", year: "2010", details: "Tony Stark is under pressure from various sources, including the government, to share his technology with the world. He must find a way to fight them while also tackling his other enemies."),
      Movie(name: "Thor", image: "thor.jpg", duration: "1h 54m", rating: "7", year: "2011", details: "Thor is exiled by his father, Odin, the King of Asgard, to the Earth to live among mortals. When he lands on Earth, his trusted weapon Mjolnir is discovered and captured by S.H.I.E.L.D."),
      Movie(name: "Captain America: The First Avenger", image: "captain_america.jpg", duration: "2h 4m", rating: "6.9", year: "2011", details: "During World War II, Steve Rogers decides to volunteer in an experiment that transforms his weak body. He must now battle a secret Nazi organisation headed by Johann Schmidt to defend his nation."),
      Movie(name: "The Avengers", image: "avengers.jpg", duration: "2h 23m", rating: "8", year: "2012", details: "Nick Fury is compelled to launch the Avengers Initiative when Loki poses a threat to planet Earth. His squad of superheroes put their minds together to accomplish the task."),
      Movie(name: "Iron Man 3", image: "iron_man_3.jpg", duration: "2h 10m", rating: "7.1", year: "2013", details: "Tony Stark encounters a formidable foe called the Mandarin. After failing to defeat his enemy, Tony embarks on a journey of self-discovery as he fights against the powerful Mandarin."),
      Movie(name: "Thor: The Dark World", image: "thor_2.jpg", duration: "1h 52m", rating: "6.8", year: "2013", details: "Thor sets out on a journey to defeat Malekith, the leader of the Dark Elves when he returns to Asgard to retrieve a dangerous weapon and fulfill his desire of destroying the Nine Realms."),
      Movie(name: "Captain America: The Winter Soldier", image: "captain_america_2.jpg", duration: "2h 16m", rating: "7.8", year: "2014", details: "As Steve Rogers adapts to the complexities of a contemporary world, he joins Natasha Romanoff and Sam Wilson in his mission to uncover the secret behind a deadly, mysterious assassin."),
      Movie(name: "Guardians Of The Galaxy", image: "guardians_of_the_galaxy.jpg", duration: "2h 2m", rating: "8", year: "2014", details: "Peter escapes from the planet Morag with a valuable orb that Ronan the Accuser wants. He eventually forms a group with unwilling heroes to stop Ronan."),
      Movie(name: "Avengers Age Of Ultron", image: "avengers_2.jpg", duration: "2h 21m", rating: "7.3", year: "2015", details: "Tony Stark builds an artificial intelligence system named Ultron with the help of Bruce Banner. When the sentient Ultron makes plans to wipe out the human race, the Avengers set out to stop him."),
      Movie(name: "Ant-Man", image: "ant_man.jpg", duration: "1h 58m", rating: "7.3", year: "2015", details: "Scott, a master thief, gains the ability to shrink in scale with the help of a futuristic suit. Now he must rise to the occasion of his superhero status and protect his secret from unsavoury elements."),
      Movie(name: "Captain America: Civil War", image: "captain_america_3.jpg", duration: "2h 28m", rating: "7.8", year: "2016", details: "Friction arises between the Avengers when one group supports the government's decision to implement a law to control their powers while the other opposes it."),
      Movie(name: "Doctor Strange", image: "dr_strange.jpg", duration: "1h 55m", rating: "7.5", year: "2016", details: "In an accident, Stephen Strange, a famous neurosurgeon, loses the ability to use his hands. He goes to visit the mysterious Ancient One to heal himself and becomes a great sorcerer under her tutelage."),
      Movie(name: "Guardians of the Galaxy Vol. 2", image: "guardians_of_the_galaxy_2.jpg", duration: "2h 17m", rating: "7.6", year: "2017", details: "After a successful mission, Quill and his team of galactic defenders meet Ego, a man claiming to be Quill's father. However, they soon learn some disturbing truths about Ego."),
      Movie(name: "Spider-Man: Homecoming", image: "spider_man.jpg", duration: "2h 13m", rating: "7.4", year: "2017", details: "Peter Parker tries to stop the Vulture from selling weapons made with advanced Chitauri technology while trying to balance his life as an ordinary high school student."),
      Movie(name: "Thor: Ragnarok", image: "thor_3.jpg", duration: "2h 10m", rating: "7.9", year: "2017", details: "Deprived of his mighty hammer Mjolnir, Thor must escape the other side of the universe to save his home, Asgard, from Hela, the goddess of death."),
      Movie(name: "Black Panther", image: "black_panther.jpg", duration: "2h 15m", rating: "7.3", year: "2018", details: "After his father's death, T'Challa returns home to Wakanda to inherit his throne. However, a powerful enemy related to his family threatens to attack his nation."),
      Movie(name: "Avengers: Infinity War", image: "avengers_infinity_war.jpg", duration: "2h 29m", rating: "8.4", year: "2018", details: "The Avengers must stop Thanos, an intergalactic warlord, from getting his hands on all the infinity stones. However, Thanos is prepared to go to any lengths to carry out his insane plan."),
      Movie(name: "Ant-man and the wasp", image: "ant_man_2.jpg", duration: "1h 58m", rating: "7", year: "2018", details: "Despite being under house arrest, Scott Lang, along with the Wasp, sets out to help Dr Hank Pym to enter the quantum realm as they face new enemies along the way."),
      Movie(name: "Venom", image: "venom.jpg", duration: "2h 20m", rating: "6.6", year: "2018", details: "While trying to take down Carlton, the CEO of Life Foundation, Eddie, a journalist, investigates experiments of human trials. Unwittingly, he gets merged with a symbiotic alien with lethal abilities."),
      Movie(name: "Captain Marvel", image: "captain_marvel.jpg", duration: "2h 4m", rating: "6.8", year: "2019", details: "Amidst a mission, Vers, a Kree warrior, gets separated from her team and is stranded on Earth. However, her life takes an unusual turn after she teams up with Fury, a S.H.I.E.L.D. agent."),
      Movie(name: "Avengers: Endgame", image: "avengers_endgame.png", duration: "3h 2m", rating: "8.4", year: "2019", details: "After Thanos, an intergalactic warlord, disintegrates half of the universe, the Avengers must reunite and assemble again to reinvigorate their trounced allies and restore balance."),
      Movie(name: "Spider-Man: Far from Home", image: "spiderman_2.png", duration: "2h 10m", rating: "7.4", year: "2019", details: "Peter Parker, the beloved superhero Spider-Man, faces four destructive elemental monsters while on holiday in Europe. Soon, he receives help from Mysterio, a fellow hero with mysterious origins."),
      Movie(name: "Black widow", image: "black_widow.jpg", duration: "2h 13m", rating: "6.7", year: "2021", details: "Natasha Romanoff, a former KGB spy, is shocked to find out that her ex handler, General Dreykov, is still alive. While evading capture by Taskmaster, she is forced to confront her dark past."),
      Movie(name: "Shang-Chi and The Legend of The Ten Rings", image: "shang_chi.jpg", duration: "2h 12m", rating: "7.4", year: "2021", details: "Martial-arts master Shang-Chi confronts the past he thought he left behind when he's drawn into the web of the mysterious Ten Rings organization."),
      Movie(name: "Venom: Let There Be Carnage", image: "venom_2.png", duration: "1h 37m", rating: "6", year: "2021", details: "Eddie Brock tries to revive his failing career by interviewing a serial killer, Cletus Kasady, who is on death row. When Carnage gains control over Cletus's body, he escapes from the prison."),
      Movie(name: "Eternals", image: "eternals.jpeg", duration: "2h 37m", rating: "6.3", year: "2021", details: "The Eternals, a race of immortal beings with superhuman powers who have secretly lived on Earth for thousands of years, reunite to battle the evil Deviants."),
      Movie(name: "Spider-Man: No Way Home", image: "spiderman_3.jpg", duration: "2h 28m", rating: "8.3", year: "2021", details: "Peter Parker seeks Doctor Strange's help to make people forget about Spiderman's identity. However, when the spell he casts gets corrupted, several unwanted guests enter their universe."),

    ];
    _movies.forEach((element) {
      _movieTiles.add(_buildMovieTile(element));
    });
  }

  Widget _buildMovieTile(Movie movie){
    return ListTile(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => MovieInDetail(movie: movie)));
      },
      contentPadding: const EdgeInsets.all(15),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          listMovieName(movie.name),
          Row(
            children: [
              Expanded(child: listMovieYear(movie.year)),
              Expanded(child: listMovieDuration(movie.duration)),
            ],
          )
        ],
      ),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset("images/thumbnail_${movie.image}",
        width: 90.0,
       fit: BoxFit.fitWidth,),

      ),
      trailing: listMovieRating(movie.rating),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: _movieTiles.length, itemBuilder: (context, index) {
      return _movieTiles[index];
    });
  }
}
