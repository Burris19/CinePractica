<?php

class Subtitulos extends Eloquent {

	protected $table = 'Subtitulos';
	public $timestamps = false;

	public function peliculas()
	{
		return 	$this->hasOne('Peliculas','id','id_Pelicula');
	}
}