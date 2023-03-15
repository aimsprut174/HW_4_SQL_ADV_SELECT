INSERT INTO artists (artist_name) 
  VALUES ('Моргенштерн'), 
  ('Ария'), ('Coma'), ('Flysolo'), 
  ('Филип Киркоров'), ('IOWA'), ('Мумий Тролль'), 
  ('Тату'), ('Lacrimosa');
  
  
INSERT INTO genres (genre_name) 
  VALUES ('рэп'), ('рок'), ('witch house'), ('поп'), ('gothic');
  
  
INSERT INTO genres_artists (artist_id, genre_id) 
  VALUES (1, 1), (1, 4), (2, 2), (3, 3), (4, 3), (5, 4), (6, 4), (7, 2), (8, 4), (9, 5);
  
  
INSERT INTO albums (album_name, album_year) 
  VALUES ('Million Dollar', 2021), 
  ('Штиль', 2002), ('Химера', 2001), ('Index of', 2018), 
  ('Crush', 2019), ('Blue', 2018), ('Import', 2015), ('OST Вампиры средней полосы', 2020), 
  ('Морская', 1997), ('200 по встречной', 2000), ('Senhsucht', 2018), ('Testimonium', 2020);  
  
  
INSERT INTO artists_albums (artist_id, album_id) 
  VALUES (1, 1), (2, 2), (2, 3), (3, 4), (4, 5), (5, 6), (6, 7), (7, 8), (7, 9), (8, 10), (9, 11), (9, 12);

INSERT INTO tracks (track_name, track_duration, album_id) 
  VALUES ('El Problema', 240, 1), ('Aristocrat', 150, 1), 
  ('Cadillac', 180, 1), ('Беспечный ангел', 215, 2), ('Штиль', 320, 3), 
  ('I monster', 1140, 4), ('Мой беспечный ангел', 150, 5), ('Цвет настроения синий', 150, 6), 
  ('Одно и то же', 271, 7), ('Призраки завтра', 265, 8), ('Владивосток 2000', 143, 9), 
  ('Нас не догонят', 262, 10), ('I lost my star in Krasnodar', 324, 11), ('Zwischen allen stuhlen', 250, 12),
  ('Я сошла с ума', 210, 10); 
  

INSERT INTO collections (collection_name, collection_year) 
  VALUES ('The Best of the best', 2020), ('Тыц-тыц', 2019), 
  ('Цой жив', 2021), ('Yankee go home', 2018), ('Для души', 2017), ('Forever', 2015), 
  ('Для кофе', 2021), ('В машину', 2019); 
  

INSERT INTO collections_tracks (collection_id, track_id) 
  VALUES (1, 1), (2, 2), (4, 3), (3, 4), (3, 5), (6, 6), 
  (5, 7), (8, 7), (2, 9), (7, 10), (8, 11), (1, 12), (6, 13), (3, 14), (2, 15);