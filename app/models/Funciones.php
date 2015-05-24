<?php

class Funciones extends Eloquent {
	protected $table = "Funciones";
	public $timestamps = false;

	public function sala(){
		return $this->hasOne('Salas','id','Id_Sala');
	}

	public function pelicula(){
		return $this->hasOne('Peliculas','id','Id_Pelicula')
	}
}