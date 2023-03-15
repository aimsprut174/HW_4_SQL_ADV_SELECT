create table if not exists Genres (
  Id serial primary key, 
  Genre_name varchar(40) not null unique);

create table if not exists Artists (
  Id serial primary key, 
  Artist_name varchar(40) not null);

create table if not exists Genres_Artists (
  Genre_id integer not null references Genres(Id), 
  Artist_id integer not null references Artists(Id), 
  constraint fkGA primary key (Genre_id, Artist_id)
 );

create table if not exists Albums (
  Id serial primary key, 
  Album_name varchar(100) not null, 
  Album_year integer not null);

create table if not exists Artists_Albums (
  Artist_id integer not null references Artists(Id), 
  Album_id integer not null references Albums(Id), 
  constraint fkAA primary key (Artist_id, Album_id)
 );

create table if not exists Tracks (
  Id serial primary key, 
  Album_id integer references Albums(Id),
  Track_name varchar(100) not null, 
  Track_duration integer not null);

create table if not exists Collections (
  Id serial primary key, 
  Collection_name varchar(100) not null, 
  Collection_year integer not null);

create table if not exists Collections_Tracks (
  Collection_id integer not null references Collections(Id), 
  Track_id integer not null references Tracks(Id), 
  constraint fkCT primary key (Collection_id, Track_id)
  );