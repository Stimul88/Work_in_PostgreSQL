create table if not exists genre (
	id serial primary key,
	name VARCHAR (60) unique not null
);




create table if not exists artiste (
	id serial primary key,
	name VARCHAR (60) unique not null
);



create table if not exists album (
	id serial primary key,
	name VARCHAR (60) not null,
	year NUMERIC not null
);

create table if not exists track (
	id serial primary key,
	name VARCHAR (60) not null,
	time INTEGER not null,
	album_id INTEGER REFERENCES album(id)
);



create table if not exists collection (
	id serial primary key,
	name VARCHAR (60)  unique not null,
	year NUMERIC not null
	
);


create table if not exists artiste_album (
	artiste_id INTEGER references Artiste(id),
	album_id INTEGER references Album(id),
	constraint rk primary key (artiste_id, album_id)
);


create table if not exists genre_artiste (
	genre_id INTEGER references Genre(id),
	artiste_id INTEGER references Artiste(id),
	constraint pk primary key (genre_id, artiste_id)
);


create table if not exists collection_track (
	track_id INTEGER NOT NULL REFERENCES Track(id),
	collection_id INTEGER references Collection(id),
	constraint mk primary key (track_id, collection_id)
);