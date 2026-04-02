ActiveStorage::Blob.create!([
  {key: "a2nu76hft0d1zyu65qnk390hzc38", filename: "avengers-end-game.png", content_type: "image/png", metadata: {"identified" => true, "analyzed" => true}, service_name: "local", byte_size: 170417, checksum: "kj5iR4kxgFioE5KG+oRY0w=="},
  {key: "mbtfozkslco1owb2xj3ifi198jci", filename: "captain-marvel.png", content_type: "image/png", metadata: {"identified" => true, "analyzed" => true}, service_name: "local", byte_size: 156822, checksum: "Usznw8GWUG7VitH+6Gqdmg=="},
  {key: "nd176p6wkzt8d5pp604aqdrn8vjk", filename: "avengers-infinity-war.png", content_type: "image/png", metadata: {"identified" => true, "analyzed" => true}, service_name: "local", byte_size: 167061, checksum: "e9t29Qs+sMldwQCR9kIWqQ=="},
  {key: "qz61se6kf5ov2pzlcs9k4mgqsirr", filename: "black-panther.png", content_type: "image/png", metadata: {"identified" => true, "analyzed" => true}, service_name: "local", byte_size: 158253, checksum: "SE535Qsj8csitkMSk5QIeA=="},
  {key: "aur2ifmi5usibi3dfv6ezl3hvpek", filename: "wonder-woman.png", content_type: "image/png", metadata: {"identified" => true, "analyzed" => true}, service_name: "local", byte_size: 139478, checksum: "1uPkc3u+X1RYpgAKLZbtYg=="},
  {key: "1d64qw0t5eabtk9red6xzmh0qwc8", filename: "fantastic-four.png", content_type: "image/png", metadata: {"identified" => true, "analyzed" => true}, service_name: "local", byte_size: 137773, checksum: "RMWBi08KVdb6Xnk/exYn2g=="},
  {key: "imfd55mw5m49mgwllpcp2ckblmo5", filename: "green-lantern.png", content_type: "image/png", metadata: {"identified" => true, "analyzed" => true}, service_name: "local", byte_size: 127074, checksum: "awdtlSxzH7A1NWqQfMGkIQ=="},
  {key: "1rkkblk68bqxsma720ivsqz4v7pf", filename: "ironman.png", content_type: "image/png", metadata: {"identified" => true, "analyzed" => true}, service_name: "local", byte_size: 118315, checksum: "shykVa4zkOLD+/wMaS9PmA=="},
  {key: "go2cgf1buu243zt6c059dg3pimeu", filename: "hulk.png", content_type: "image/png", metadata: {"identified" => true, "analyzed" => true}, service_name: "local", byte_size: 126199, checksum: "10TCNaMQepK65Mp40SLoIA=="},
  {key: "4c531osddvr5bkahhpxt82ojvi5u", filename: "spiderman.png", content_type: "image/png", metadata: {"identified" => true, "analyzed" => true}, service_name: "local", byte_size: 152042, checksum: "XtDlRDoW3mpGadhSZuEfTg=="},
  {key: "aw6b4n3jgzo5xfxkw4iveoe3rz9w", filename: "batman.png", content_type: "image/png", metadata: {"identified" => true, "analyzed" => true}, service_name: "local", byte_size: 111138, checksum: "ns65WzYCa3mLg8BAPVGhWg=="},
  {key: "b7x8cc579bamkj2h9b2zmzwsiocs", filename: "superman.png", content_type: "image/png", metadata: {"identified" => true, "analyzed" => true}, service_name: "local", byte_size: 110746, checksum: "cQ4N4Hgqwlwizo1/WYbPQA=="},
  {key: "b01sj3zhdeys4owxf8m29xhekd4q", filename: "dez2gvj-f4a7d594-9740-452a-a2ef-01808a4a6ca8.png", content_type: "image/png", metadata: {"identified" => true, "analyzed" => true}, service_name: "local", byte_size: 516844, checksum: "YIsu3/DgZnnXZwJIXVj40g=="}
])
User.create!([
  {name: "Larry", email: "larry@example.com", password_digest: "$2a$12$GGhYCGMWIH2zRgp8g2V1bOYt0oWJm7qc5rolOl5cmZ0wgvzq0OP6q", username: "larry45", admin: false, slug: "larry"},
  {name: "Daisy", email: "daisy@example.com", password_digest: "$2a$12$cxX1VjqcLkn0Ao7e1aHPveqPpVMqqFpjVJGyZFLOHQPNsKOozJij.", username: "dizzydaisy", admin: false, slug: "daisy"},
  {name: "PL", email: "pl@example.com", password_digest: "$2a$12$ZJjBmhIojDh03BWr/Il4Defo6MVfcnAumI1u/cND6dab77tXRvB9G", username: "plm1609", admin: true, slug: "pl"},
  {name: "Johnny B.", email: "johnny@example.com", password_digest: "$2a$12$x7ucrHdiP63nIc289BBy3.OxlZ/vAXSoXbzLnTAMsWNL5.ARQ5jgq", username: "johnthemachine", admin: false, slug: "johnny-b"}
])
Movie.create!([
  {title: "Avengers: Endgame", rating: "PG-13", total_gross: "1223641414.0", description: "After the devastating events of Avengers: Infinity War, the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to undo Thanos' actions and restore order to the universe.", released_on: "2019-04-26", image_file: "placeholder.png", director: "Anthony Russo", duration: "181 min", slug: "avengers-endgame"},
  {title: "Captain Marvel", rating: "PG-13", total_gross: "1110662849.0", description: "Carol Danvers becomes one of the universe's most powerful heroes when Earth is caught in the middle of a galactic war between two alien races.", released_on: "2019-03-08", image_file: "placeholder.png", director: "Anna Boden", duration: "124 min", slug: "captain-marvel"},
  {title: "Black Panther", rating: "PG-13", total_gross: "1346913161.0", description: "T'Challa, heir to the hidden but advanced kingdom of Wakanda, must step forward to lead his people into a new future and must confront a challenger from his country's past.", released_on: "2018-02-16", image_file: "placeholder.png", director: "Ryan Coogler", duration: "134 min", slug: "black-panther"},
  {title: "Avengers: Infinity War", rating: "PG-13", total_gross: "2048359754.0", description: "The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.", released_on: "2018-04-27", image_file: "placeholder.png", director: "Anthony Russo", duration: "149 min", slug: "avengers-infinity-war"},
  {title: "Green Lantern", rating: "PG-13", total_gross: "219851172.0", description: "Reckless test pilot Hal Jordan is granted an alien ring that bestows him with otherworldly powers that inducts him into an intergalactic police force, the Green Lantern Corps.", released_on: "2011-06-17", image_file: "placeholder.png", director: "Martin Campbell", duration: "114 min", slug: "green-lantern"},
  {title: "Fantastic Four", rating: "PG-13", total_gross: "168257860.0", description: "Four young outsiders teleport to an alternate and dangerous universe which alters their physical form in shocking ways. The four must learn to harness their new abilities and work together to save Earth from a former friend turned enemy.", released_on: "2015-08-07", image_file: "placeholder.png", director: "Josh Trank", duration: "100 min", slug: "fantastic-four"},
  {title: "Iron Man", rating: "PG-13", total_gross: "585366247.0", description: "When wealthy industrialist Tony Stark is forced to build an armored suit after a life-threatening incident, he ultimately decides to use its technology to fight against evil.", released_on: "2008-05-02", image_file: "placeholder.png", director: "Jon Favreau", duration: "126 min", slug: "iron-man"},
  {title: "Superman", rating: "PG", total_gross: "300451603.0", description: "An alien orphan is sent from his dying planet to Earth, where he grows up to become his adoptive home's first and greatest super-hero.", released_on: "1978-12-15", image_file: "placeholder.png", director: "Richard Donner", duration: "143 min", slug: "superman"},
  {title: "Spider-Man", rating: "PG-13", total_gross: "825025036.0", description: "When bitten by a genetically modified spider, a nerdy, shy, and awkward high school student gains spider-like abilities that he eventually must use to fight evil as a superhero after tragedy befalls his family.", released_on: "2002-05-03", image_file: "placeholder.png", director: "Sam Raimi", duration: "121 min", slug: "spider-man"},
  {title: "Batman", rating: "PG-13", total_gross: "411348924.0", description: "The Dark Knight of Gotham City begins his war on crime with his first major enemy being the clownishly homicidal Joker.", released_on: "1989-06-23", image_file: "placeholder.png", director: "Tim Burton", duration: "126 min", slug: "batman"},
  {title: "Wonder Woman", rating: "PG-13", total_gross: "821847012.0", description: "When a pilot crashes and tells of conflict in the outside world, Diana, an Amazonian warrior in training, leaves home to fight a war, discovering her full powers and true destiny.", released_on: "2017-06-02", image_file: "placeholder.png", director: "Patty Jenkins", duration: "141 min", slug: "wonder-woman"},
  {title: "Ant-Man", rating: "PG", total_gross: "519300000.0", description: "In 1989, scientist Hank Pym resigns from S.H.I.E.L.D. after discovering their attempt to replicate his Ant-Man shrinking technology. Believing the technology would be dangerous if replicated, Pym vows to hide it for as long as he lives.", released_on: "2015-06-29", image_file: "placeholder.png", director: "Peyton Reed", duration: "117 min", slug: "ant-man"},
  {title: "Hulk", rating: "PG-13", total_gross: "113107712.0", description: "Bruce Banner transforms into a raging green monster when he gets angry.", released_on: "2003-06-20", image_file: "placeholder.png", director: "", duration: "138 min", slug: "hulk"}
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
  {name: "Sci-Fi", slug: "sci-fi"},
  {name: "Film Noir", slug: "film-noir"}
])
ActiveStorage::Attachment.create!([
  {name: "main_image", record_type: "Movie", record_id: 1, blob_id: 1},
  {name: "main_image", record_type: "Movie", record_id: 2, blob_id: 2},
  {name: "main_image", record_type: "Movie", record_id: 4, blob_id: 3},
  {name: "main_image", record_type: "Movie", record_id: 3, blob_id: 4},
  {name: "main_image", record_type: "Movie", record_id: 12, blob_id: 5},
  {name: "main_image", record_type: "Movie", record_id: 6, blob_id: 6},
  {name: "main_image", record_type: "Movie", record_id: 5, blob_id: 7},
  {name: "main_image", record_type: "Movie", record_id: 7, blob_id: 8},
  {name: "main_image", record_type: "Movie", record_id: 15, blob_id: 9},
  {name: "main_image", record_type: "Movie", record_id: 9, blob_id: 10},
  {name: "main_image", record_type: "Movie", record_id: 10, blob_id: 11},
  {name: "main_image", record_type: "Movie", record_id: 8, blob_id: 12},
  {name: "main_image", record_type: "Movie", record_id: 13, blob_id: 16}
])
Review.create!([
  {stars: 5, comment: "Two thumbs up!", movie_id: 2, user_id: 1},
  {stars: 5, comment: "Greatt", movie_id: 1, user_id: 4},
  {stars: 4, comment: "Cool!", movie_id: 1, user_id: 7},
  {stars: 4, comment: "Good", movie_id: 3, user_id: 7},
  {stars: 3, comment: "Just ok", movie_id: 2, user_id: 7},
  {stars: 5, comment: "LA Knight, yeaaaah", movie_id: 13, user_id: 4}
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
  {movie_id: 1, genre_id: 1},
  {movie_id: 13, genre_id: 1},
  {movie_id: 13, genre_id: 10}
])
