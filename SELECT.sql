SELECT g.genre_name, count(a2.artist_name) FROM genres g
       JOIN genres_artists ga ON g.id = ga.genre_id
       JOIN artists a2 ON ga.artist_id = a2.id
       GROUP BY g.genre_name;

SELECT COUNT(t.track_name) FROM tracks t
       JOIN albums a ON t.album_id = a.id
       WHERE album_year BETWEEN 2019 AND 2020;

SELECT a.album_name , ROUND(AVG(t.track_duration),2)  FROM tracks t
       JOIN albums a ON t.album_id = a.id
       GROUP BY  a.id;

SELECT DISTINCT a.artist_name FROM artists a
       WHERE a.artist_name NOT IN (
       SELECT DISTINCT a.artist_name FROM artists a
       LEFT JOIN artists_albums aa ON a.id = aa.artist_id
       LEFT JOIN albums a2 ON a2.id = aa.album_id
       WHERE a2.album_year = 2020)
       ORDER BY a.artist_name;

SELECT c.collection_name FROM collections c
       JOIN collections_tracks ct ON c.id = ct.collection_id
       JOIN tracks t ON ct.track_id = t.id
       JOIN albums a ON t.album_id = a.id
       JOIN artists_albums aa ON a.id = aa.album_id
       JOIN artists a2 ON a2.id = aa.artist_id
       WHERE a2.artist_name = 'Моргенштерн';

SELECT a.album_name FROM albums a
       JOIN artists_albums aa ON a.id = aa.album_id
       JOIN artists a2 ON aa.artist_id = a2.id
       JOIN genres_artists ga ON a2.id = ga.artist_id
       JOIN genres g ON g.id = ga.genre_id
       GROUP BY a.album_name
       HAVING COUNT(g.genre_name) > 1;

SELECT t.track_name FROM tracks t
       LEFT JOIN collections_tracks ct ON t.id = ct.track_id
       WHERE ct.track_id IS NULL;

SELECT a2.artist_name FROM artists a2
       JOIN artists_albums aa ON a2.id = aa.artist_id
       JOIN albums a ON a.id = aa.album_id
       JOIN tracks t ON a.id = t.album_id
       WHERE track_duration = (SELECT MIN(track_duration) FROM Tracks);

SELECT a.album_name FROM albums a
       JOIN tracks t ON a.id = t.album_id
       GROUP BY a.album_name
       HAVING count(a.album_name) = (SELECT count(track_name) FROM Tracks
       GROUP BY album_id
       ORDER BY count(track_name)
       LIMIT 1);