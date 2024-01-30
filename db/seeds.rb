Movie.destroy_all


movies_data = [
  { title: "The Enigmatic Voyage", overview: "A thrilling adventure across uncharted lands.", rating: 7.8 },
  { title: "Eternal Echoes", overview: "A romantic tale of love that transcends time.", rating: 8.5 },
  { title: "Midnight Whispers", overview: "Intrigue and mystery unfold in a small town after dark.", rating: 6.9 },
  { title: "Shadows of Destiny", overview: "An epic fantasy where destinies collide in a war of realms.", rating: 9.0 },
  { title: "Lost Symphony", overview: "A musical prodigy embarks on a journey to find the melody that can save the world.", rating: 8.2 },
  { title: "Starlight Serenade", overview: "A heartwarming story of unlikely friendships under the starlit sky.", rating: 7.4 },
  { title: "Whispers in the Wind", overview: "A tale of redemption and forgiveness set against the backdrop of a seaside town.", rating: 7.1 },
  { title: "Specters of Time", overview: "Time-traveling detectives solve crimes across different eras.", rating: 8.8 },
  { title: "Ephemeral Eternity", overview: "Love and loss entwined in a bittersweet tale.", rating: 7.7 },
  { title: "The Quantum Paradox", overview: "Scientists unlock the secrets of the universe, facing unforeseen consequences.", rating: 9.2 },
  { title: "Echoes of Tomorrow", overview: "A group of friends discovers a portal leading to the future.", rating: 7.3 },
  { title: "Labyrinth of Dreams", overview: "An enigmatic maze reveals the deepest desires of those who enter.", rating: 8.0 },
  { title: "Silent Symphony", overview: "A mute musician communicates through the language of music.", rating: 7.6 },
  { title: "Chasing Aurora", overview: "A breathtaking journey to witness the Northern Lights becomes a life-changing experience.", rating: 8.1 },
  { title: "Beyond the Horizon", overview: "Explorers embark on a perilous expedition to reach the ends of the Earth.", rating: 7.9 },
  { title: "Serenade of the Sirens", overview: "A mesmerizing encounter with mythical creatures beneath the ocean's surface.", rating: 8.3 },
  { title: "Whispers of Wonderland", overview: "Alice returns to Wonderland, discovering new mysteries and challenges.", rating: 7.5 },
  { title: "Chronicles of the Cosmos", overview: "Interstellar adventures unfold as civilizations clash in the vastness of space.", rating: 8.7 },
  { title: "Eternal Embrace", overview: "A timeless love story transcending generations and societal norms.", rating: 7.2 },
  { title: "Infinite Odyssey", overview: "An epic journey across dimensions to save the multiverse from impending doom.", rating: 9.5 },
  { title: "Mysteries of the Moonlight", overview: "A detective investigates supernatural occurrences under the moon's glow.", rating: 7.0 },
  { title: "Symphony of Shadows", overview: "In a city shrouded in darkness, a hero rises to combat crime and corruption.", rating: 8.4 },
  { title: "Ethereal Enchantment", overview: "Magical beings and mystical realms come to life in a visually stunning adventure.", rating: 7.8 },
  { title: "Whispers of Winter", overview: "A heartwarming holiday tale set in a charming snow-covered village.", rating: 8.6 }
]

movies_data.each do |movie_data|
  Movie.create(movie_data)
end

puts "Seeded #{Movie.count} movies."
