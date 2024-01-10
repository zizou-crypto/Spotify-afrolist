SELECT * FROM spotify_data.spotifyafro;
-- list of artists name;
 select distinct artist from spotify_data.spotifyafro
 group by artist;
 
 -- number of artists;
 select count(artist) from spotify_data.spotifyafro;
 
 select count(name) from spotify_data.spotifyafro;
 -- number of burna boy songs released;
 select name, count(*), release_date from spotify_data.spotifyafro
 where artist = "Burna boy"
 group by name, release_date 
 order by release_date desc;
 
 -- most popular songs according to genre;
 select artist, popularity, name from spotify_data.spotifyafro
 where genre = "afropop,azontobeats,nigerian pop"
 group by artist, popularity, name
 order by max(popularity) desc
 limit 10;
 -- average length for spotify;
 select round(avg(length),0) as avg_length from spotify_data.spotifyafro;
 
 -- max danceability of songs from spotify;
 select distinct max(danceability) as highest_danceable,  artist 
 from spotify_data.spotifyafro
 where release_date >= 2022
 group by artist;
 
 select max(liveness) as liveness_artist, artist from spotify_data.spotifyafro
 group by artist, liveness
 order by liveness desc
 limit 5;

select count(distinct artist) from spotify_data.spotifyafro;
select count(distinct name) from c;

select artist, name, count(*) as song_count
from  spotify_data.spotifyafro
group by artist, name 
order by song_count  desc
limit 10;

select 

 
 
 
 