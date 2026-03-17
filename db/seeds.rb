User.create!([
  {name: "Larry", email: "larry@example.com", password_digest: "$2a$12$GGhYCGMWIH2zRgp8g2V1bOYt0oWJm7qc5rolOl5cmZ0wgvzq0OP6q", username: "larry45", admin: false, slug: "larry"},
  {name: "Daisy", email: "daisy@example.com", password_digest: "$2a$12$cxX1VjqcLkn0Ao7e1aHPveqPpVMqqFpjVJGyZFLOHQPNsKOozJij.", username: "dizzydaisy", admin: false, slug: "daisy"},
  {name: "PL", email: "pl@example.com", password_digest: "$2a$12$ZJjBmhIojDh03BWr/Il4Defo6MVfcnAumI1u/cND6dab77tXRvB9G", username: "plm1609", admin: true, slug: "pl"},
  {name: "Johnny B.", email: "johnny@example.com", password_digest: "$2a$12$x7ucrHdiP63nIc289BBy3.OxlZ/vAXSoXbzLnTAMsWNL5.ARQ5jgq", username: "johnthemachine", admin: false, slug: "johnny-b"}
])
Movie.create!([
  {title: "Avengers: Endgame", rating: "PG-13", total_gross: "1223641414.0", description: "After the devastating events of Avengers: Infinity War, the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to undo Thanos' actions and restore order to the universe.", released_on: "2019-04-26", image_file: "placeholder.png", director: "Anthony Russo", duration: "181 min", image_file_name: "avengers-end-game.png", slug: "avengers-endgame"},
  {title: "Captain Marvel", rating: "PG-13", total_gross: "1110662849.0", description: "Carol Danvers becomes one of the universe's most powerful heroes when Earth is caught in the middle of a galactic war between two alien races.", released_on: "2019-03-08", image_file: "placeholder.png", director: "Anna Boden", duration: "124 min", image_file_name: "captain-marvel.png", slug: "captain-marvel"},
  {title: "Black Panther", rating: "PG-13", total_gross: "1346913161.0", description: "T'Challa, heir to the hidden but advanced kingdom of Wakanda, must step forward to lead his people into a new future and must confront a challenger from his country's past.", released_on: "2018-02-16", image_file: "placeholder.png", director: "Ryan Coogler", duration: "134 min", image_file_name: "black-panther.png", slug: "black-panther"},
  {title: "Avengers: Infinity War", rating: "PG-13", total_gross: "2048359754.0", description: "The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.", released_on: "2018-04-27", image_file: "placeholder.png", director: "Anthony Russo", duration: "149 min", image_file_name: "avengers-infinity-war.png", slug: "avengers-infinity-war"},
  {title: "Green Lantern", rating: "PG-13", total_gross: "219851172.0", description: "Reckless test pilot Hal Jordan is granted an alien ring that bestows him with otherworldly powers that inducts him into an intergalactic police force, the Green Lantern Corps.", released_on: "2011-06-17", image_file: "placeholder.png", director: "Martin Campbell", duration: "114 min", image_file_name: "green-lantern.png", slug: "green-lantern"},
  {title: "Fantastic Four", rating: "PG-13", total_gross: "168257860.0", description: "Four young outsiders teleport to an alternate and dangerous universe which alters their physical form in shocking ways. The four must learn to harness their new abilities and work together to save Earth from a former friend turned enemy.", released_on: "2015-08-07", image_file: "placeholder.png", director: "Josh Trank", duration: "100 min", image_file_name: "fantastic-four.png", slug: "fantastic-four"},
  {title: "Iron Man", rating: "PG-13", total_gross: "585366247.0", description: "When wealthy industrialist Tony Stark is forced to build an armored suit after a life-threatening incident, he ultimately decides to use its technology to fight against evil.", released_on: "2008-05-02", image_file: "placeholder.png", director: "Jon Favreau", duration: "126 min", image_file_name: "ironman.png", slug: "iron-man"},
  {title: "Superman", rating: "PG", total_gross: "300451603.0", description: "An alien orphan is sent from his dying planet to Earth, where he grows up to become his adoptive home's first and greatest super-hero.", released_on: "1978-12-15", image_file: "placeholder.png", director: "Richard Donner", duration: "143 min", image_file_name: "superman.png", slug: "superman"},
  {title: "Spider-Man", rating: "PG-13", total_gross: "825025036.0", description: "When bitten by a genetically modified spider, a nerdy, shy, and awkward high school student gains spider-like abilities that he eventually must use to fight evil as a superhero after tragedy befalls his family.", released_on: "2002-05-03", image_file: "placeholder.png", director: "Sam Raimi", duration: "121 min", image_file_name: "spiderman.png", slug: "spider-man"},
  {title: "Batman", rating: "PG-13", total_gross: "411348924.0", description: "The Dark Knight of Gotham City begins his war on crime with his first major enemy being the clownishly homicidal Joker.", released_on: "1989-06-23", image_file: "placeholder.png", director: "Tim Burton", duration: "126 min", image_file_name: "batman.png", slug: "batman"},
  {title: "Wonder Woman", rating: "PG-13", total_gross: "821847012.0", description: "When a pilot crashes and tells of conflict in the outside world, Diana, an Amazonian warrior in training, leaves home to fight a war, discovering her full powers and true destiny.", released_on: "2017-06-02", image_file: "placeholder.png", director: "Patty Jenkins", duration: "141 min", image_file_name: "wonder-woman.png", slug: "wonder-woman"},
  {title: "Ant-Man", rating: "PG", total_gross: "519300000.0", description: "In 1989, scientist Hank Pym resigns from S.H.I.E.L.D. after discovering their attempt to replicate his Ant-Man shrinking technology. Believing the technology would be dangerous if replicated, Pym vows to hide it for as long as he lives.", released_on: "2015-06-29", image_file: "placeholder.png", director: nil, duration: "117 min", image_file_name: "placeholder.png", slug: "ant-man"},
  {title: "Batman vs. Godzilla", rating: "PG-13", total_gross: "387623910.0", description: "An epic battle between The Caped Crusader and the fire-breathing dinosaur Gojira.", released_on: "2026-02-08", image_file: "placeholder.png", director: nil, duration: "114 min", image_file_name: "placeholder.png", slug: "batman-vs-godzilla"},
  {title: "Hulk", rating: "PG-13", total_gross: "113107712.0", description: "Bruce Banner transforms into a raging green monster when he gets angry.", released_on: "2003-06-20", image_file: "placeholder.png", director: nil, duration: "138 min", image_file_name: "hulk.png", slug: "hulk"}
])
Genre.create!([
  {name: "Action", slug: "action"},
  {name: "Comedy", slug: "comedy"},
  {name: "Drama", slug: "drama"},
  {name: "Romance", slug: "romance"},
  {name: "Thriller", slug: "thriller"},
  {name: "Fantasy", slug: "fantasy"},
  {name: "Documentary", slug: "documentary"},
  {name: "Adventure", slug: "adventure"},
  {name: "Animation", slug: "animation"},
  {name: "Sci-Fi", slug: "sci-fi"}
])
Review.create!([
  {stars: 5, comment: "Two thumbs up!", movie_id: 2, user_id: 1},
  {stars: 5, comment: "Greatt", movie_id: 1, user_id: 4},
  {stars: 4, comment: "Cool!", movie_id: 1, user_id: 7},
  {stars: 4, comment: "Good", movie_id: 3, user_id: 7},
  {stars: 3, comment: "Just ok", movie_id: 2, user_id: 7}
])
Favorite.create!([
  {movie_id: 1, user_id: 1},
  {movie_id: 1, user_id: 2},
  {movie_id: 2, user_id: 1},
  {movie_id: 2, user_id: 4},
  {movie_id: 3, user_id: 7},
  {movie_id: 3, user_id: 2},
  {movie_id: 4, user_id: 4},
  {movie_id: 4, user_id: 7},
  {movie_id: 4, user_id: 1},
  {movie_id: 1, user_id: 4}
])
Characterization.create!([
  {movie_id: 3, genre_id: 1},
  {movie_id: 3, genre_id: 8},
  {movie_id: 3, genre_id: 10},
  {movie_id: 1, genre_id: 1}
])
