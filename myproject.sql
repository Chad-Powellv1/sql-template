-- Created users table
create table users (
user_id serial primary key,
user_name varchar (32) not null,
date_created timestamp not null,
password varchar (32) not null,
email varchar (50) not null
)

-- Created playlist table
create table playlist (
playlist_id serial primary key,
playlist_name varchar (50)
)

-- Created album table
create table albums (
album_id serial primary key,
artist_name varchar (50) not null,
album_title varchar (50) not null,
album_release_date varchar (32),
genre varchar (32)
)

-- Create song table
create table songs (
song_id serial primary key,
song_name varchar (50) not null,
artist_name varchar (50),
song_release_date varchar (32),
genre varchar (50)
)

-- Change name of album table column name
ALTER TABLE albums RENAME COLUMN album_date TO album_release_date;

-- Add new column to playlist table
alter table playlist
add column user_id int

-- Add a foreign key to playlist using the users table primary key
alter table playlist
add constraint user_connection
foreign key (user_id)
references users (user_id)

-- Delete column from users table
ALTER TABLE users 
DROP COLUMN date_created

-- Add data to users table
insert into users (user_name, password, email)
values ('James Smith', '2345', 'jsmith@yahoo.com')
