# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Movie.destroy_all
Artist.destroy_all
Director.destroy_all
MovieGenre.destroy_all

# Gêneros
genres = MovieGenre.create([
  { name: 'Animação' },
  { name: 'Ação' },
  { name: 'Fantasia' },
  { name: 'Ficção Científica' }
])

# Diretores
directors = Director.create([
  { name: 'Tetsuro Kodama' },
  { name: 'Jon Watts' },
  { name: 'Sam Raimi' },
  { name: 'Dan Trachtenberg' }
])

# Artistas Dragon Ball Super: Super Hero
dragon_ball_artists = Artist.create([
  { name: 'Masako Nozawa' },
  { name: 'Toshio Furukawa' },
  { name: 'Yuko Minaguchi' },
  { name: 'Hiroshi Kamiya' },
  { name: 'Mamoru Miyano' },
  { name: 'Miyu Irino' },
  { name: 'Ryota Takeuchi' }
])

# Artistas Homem-Aranha: Sem Volta Para Casa
spider_man_artists = Artist.create([
  { name: 'Tom Holland' },
  { name: 'Zendaya' },
  { name: 'Benedict Cumberbatch' },
  { name: 'Jacob Batalon' },
  { name: 'Jon Favreau' },
  { name: 'Jamie Foxx' },
  { name: 'Willem Dafoe' }
])

# Artistas Doutor Estranho no Multiverso da Loucura
strange_doctor_artists = Artist.create([
  { name: 'Benedict Cumberbatch' },
  { name: 'Elizabeth Olsen' },
  { name: 'Chiwetel Ejiofor' },
  { name: 'Benedict Wong' },
  { name: 'Xochitl Gomez' },
  { name: 'Jett Klyne' },
  { name: 'Julian Hilliard' },
  { name: 'Sheila Atim' }
])

# Artistas O Predador: A Caçada
predator_artists = Artist.create([
  { name: 'Amber Midthunder' },
  { name: 'Dakota Beavers' },
  { name: 'Dane DiLiegro' },
  { name: 'Stormee Kipp' },
  { name: 'Michelle Thrush' },
  { name: 'Julian Black Antelope' },
  { name: 'Stefany Mathias' },
  { name: 'Nelson Leis' },
  { name: 'Bennett Taylor '}
])

# Filme Dragon Ball Super: Super Hero
dragon_ball_movie = Movie.create!( title: 'Dragon Ball Super: Super Hero',
  cover_url: 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/FiqBRypTDyHzqcxdbpPb3ddFep.jpg',
  published_at: '18-08-2022',
  director_id: directors[0].id,
  movie_genre_id: genres[0].id,
  synopsis: 'Com suas capas balançando, Gamma 1 e Gamma 2 podem ser vistos fazendo algumas poses incríveis! Além disso, há alguns novos personagens originais que teremos que esperar para descobrir mais, não importa o quão difícil possa ser! Vestindo seu uniforme e tomando o centro do palco está Gohan, que parece estar se preparando para a luta de uma vida ao lado de Piccolo, Goku, Vegeta e Pan! (sinopse temporária)',
  artist_ids:  dragon_ball_artists.map { |artist| artist.id }
)

# Filme Homem-Aranha: Sem Volta Para Casa
spider_man_movie = Movie.create!( title: 'Homem-Aranha: Sem Volta Para Casa',
  cover_url: 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/fVzXp3NwovUlLe7fvoRynCmBPNc.jpg',
  published_at: '16-12-2021',
  director_id: directors[1].id,
  movie_genre_id: genres[1].id,
  synopsis: 'Peter Parker é desmascarado e não consegue mais separar sua vida normal dos grandes riscos de ser um super-herói. Quando ele pede ajuda ao Doutor Estranho, os riscos se tornam ainda mais perigosos, e o forçam a descobrir o que realmente significa ser o Homem-Aranha...',
  artist_ids:  spider_man_artists.map { |artist| artist.id }
)

# Filme Doutor Estranho no Multiverso da Loucura
strange_doctor_movie = Movie.create!( title: 'Doutor Estranho no Multiverso da Loucura',
  cover_url: 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/boIgXXUhw5O3oVkhXsE6SJZkmYo.jpg',
  published_at: '05-08-2022',
  director_id: directors[2].id,
  movie_genre_id: genres[2].id,
  synopsis: 'Doutor Estranho, com a ajuda de aliados místicos antigos e novos, atravessa as perigosas realidades alternativas e alucinantes do Multiverso para enfrentar um novo adversário misterioso.',
  artist_ids:  strange_doctor_artists.map { |artist| artist.id }
)

# Filme O Predador: A Caçada
predator_movie = Movie.create!( title: 'O Predador: A Caçada',
  cover_url: 'https://image.tmdb.org/t/p/w533_and_h300_bestv2/g7Ii9sYAFG96W7cvMQ4zXq39RJ5.jpg',
  published_at: '05-05-2022',
  director_id: directors[3].id,
  movie_genre_id: genres[3].id,
  synopsis: 'Ambientado no mundo da Nação Comanche no início de 1700, "O Predador: A Caçada" é a história não contada de uma jovem guerreira altamente qualificada, desesperada para proteger seu povo do perigo iminente. Ela persegue e finalmente confronta sua presa, que acaba sendo um predador alienígena altamente evoluído com um arsenal tecnologicamente avançado, resultando em um confronto brutal e aterrorizante entre os adversários.',
  artist_ids:  predator_artists.map { |artist| artist.id }
)