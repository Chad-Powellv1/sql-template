-- Created songs table
create table songs (
songs_id serial primary key,
song_name varchar (50),
song_file varchar (50),
artist_name varchar (50),
song_release_date varchar (50)
)

-- Created category table
create table category (
category_id serial primary key,
rock varchar (50),
country varchar (50),
hip_hop varchar (50),
rap varchar (50),
classical varchar (50)
)

-- Created album table
create table albums (
album_id serial primary key,
album_name varchar (50),
album_release_date varchar (50),
artist_name varchar (50)
)

