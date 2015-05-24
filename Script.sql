create table peliculas(
	id int,
  	tituloDistribucion varchar2(250),
  	tituloOriginal varchar2(150),
  	genero varchar2(150),
  	idiomaOriginal varchar2(150),
  	paisOrigen varchar2(150),
  	añoProduccion date,
  	sitioWeb varchar2(200),
  	duracion varchar2(20),
  	calificacion varchar2(100),
  	fechaDeEstreno date,
  	resumen varchar2(250),
  	primary key(id)
)
create table subtitulos(
	id int,
	idioma varchar2(100),
	idPelicula int,
	primary key(id),
	foreign key (idpelicula) references peliculas(id)
)

create table personas(
	id int,
	nombre varchar2(200),
	nacionalidad varchar2(150),
	primary key(id)
)

create table salas(
	id int,
	nombre varchar2(250),
	noButacas int,
	idCine int
	primary key(id),
	foreign key(idCine) references Cines(id)
)

create table reparto(
	id int,
	esDirector int,
	idPersona int,
	idPelicula int,
	primary key(id),
	foreign key (idPersona) references persona (id),
	foreign key (idPelicula) references peliculas (id)
)

create table cines(
	id int,
	nombre varchar2(200),
	direccion varchar2(200),
	telefono varchar2(20),
	tienePromocion int,
	primary key(id)
)

create table funciones(
	id int,
	dia varchar2(45),	
	horarioInicio timestamp,
	horarioFin timestamp,
	idSala int,
	idPelicula int,
	primary key(id),
	foreign key (idSala) references salas (id)
	foreign key (idPelicula) references peliculas (id)
)

create table users(
	id int,
	username varchar2(60),
	password varchar2(60),
	createdat timestamp,
	updatedat timestamp,
	primary key(id)
)


create table promociones(
	id int,
	descripcion varchar2(255),
	descuento int,
	idSala int,
	primary key(id),
	foreign key(idSala) references salas(id)
)

create table opiniones(
	id int,
	edad int,
	fecha date,
	calificacion int,
	idPelicula,
	primary key(id),
	foreign key(idPelicula) references peliculas(id)
)
