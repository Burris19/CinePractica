<?php

class Reparto extends Eloquent {

	protected $table ="Reparto";
	public $timestamps = false;

	public function persona(){
		return $this->hasOne('Personas','id','IdPersona');		
	}

	public function pelicula(){ 
		return $this->hasOne('Peliculas','id','Id_pelicula')
	}

}